/*
This file is part of the DAO.

The DAO is free software: you can redistribute it and/or modify
it under the terms of the GNU lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

The DAO is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU lesser General Public License for more details.

You should have received a copy of the GNU lesser General Public License
along with the DAO.  If not, see <http://www.gnu.org/licenses/>.
*/

// SPDX-License-Identifier: UNLICENSED

import "../libs/oraclize.sol";
import "./Token.sol";

pragma solidity ^0.8.0;

/////////////////////
// There is a solidity bug in the return parameters that it's not solved
// when the bug is solved, the import from DAO is more clean.
// In the meantime, a workaround proxy is defined

// Uncoment this line when error fixed
// import "./DAO.sol";

// Workaround proxy remove when fixed
abstract contract DAO {
    function proposals(uint _proposalID) public virtual returns(
        address recipient,
        uint amount,
        uint descriptionIdx,
        uint votingDeadline,
        bool open,
        bool proposalPassed,
        bytes32 proposalHash,
        uint proposalDeposit,
        bool newCurator
    );

    function transfer(address _to, uint256 _amount) public virtual returns (bool success);

    function transferFrom(address _from, address _to, uint256 _amount) public virtual returns (bool success);

    function vote(
        uint _proposalID,
        bool _supportsProposal
    ) public virtual returns (uint _voteID);

    function balanceOf(address _owner) public view virtual returns (uint256 balance);
}
// End of workaround proxy
////////////////////


abstract contract DTHPoolInterface {

    // delegae url
    string public delegateUrl;

    // Max time the tokens can be blocked.
    // The real voting in the DAO will be called in the last moment in order
    // to block the tokens for the minimum time. This parameter defines the
    // seconds before the voting period ends that the vote can be performed
    uint maxTimeBlocked;


    // Address of the delegate
    address public delegate;

    // The DAO contract
    address public daoAddress;

    struct ProposalStatus {

        // True when the delegate sets the vote
        bool voteSet;

        // True if the proposal should ve voted
        bool willVote;

        // True if the proposal should be accepted.
        bool suportProposal;

        // True when the vote is performed;
        bool executed;

        // Proposal votingDeadline
        uint votingDeadline;

        // String set by the delegator with the motivation
        string motivation;
    }

    // Statuses of the diferent proposal
    mapping (uint => ProposalStatus) public proposalStatuses;


    // Index of proposals by oraclizeId
    mapping (bytes32 => uint) public oraclizeId2proposalId;

    /// @dev Constructor setting the dao address and the delegate
    /// @param _daoAddress address of the DAO
    /// @param _delegate adddress of the delegate.
    /// @param _maxTimeBlocked the maximum time the tokens will be blocked
    /// @param _delegateName Name of the delegate
    /// @param _delegateUrl Url of the delegate
    /// @param _tokenSymbol token  symbol.
    // DTHPool(address _daoAddress, address _delegate, uint _maxTimeBlocked, string _delegateName, string _delegateUrl, string _tokenSymbol);


    /// @notice send votes to this contract.
    /// @param _amount Tokens that will be transfered to the pool.
    /// @return _success Whether the transfer was successful or not
    function delegateDAOTokens(uint _amount) public virtual returns (bool _success);

    /// Returns DAO tokens to the original
    /// @param _amount that will be transfered back to the owner.
    /// @return _success Whether the transfer was successful or not
    function undelegateDAOTokens(uint _amount) public virtual returns (bool _success);


    /// @notice This method will be called by the delegate to publish what will
    /// be his vote in a specific proposal.
    /// @param _proposalID The proposal to set the vote.
    /// @param _willVote true If the proposal will be voted.
    /// @param _supportsProposal What will be the vote.
    function setVoteIntention(
        uint _proposalID,
        bool _willVote,
        bool _supportsProposal,
        string memory _motivation
    ) public virtual returns (bool _success);

    /// @notice This method will be doing the actual voting in the DAO
    /// for the _proposalID
    /// @param _proposalID The proposal to set the vote.
    /// @return _finalized true if this vote Proposal must not be executed again.
    function executeVote(uint _proposalID) public virtual returns (bool _finalized);


    /// @notice This function is intended because if some body sends tokens
    /// directly to this contract, the tokens can be sent to the delegate
    function fixTokens() public virtual returns (bool _success);


    /// @notice If some body sends ether to this contract, the delegate will be
    /// able to extract it.
    function getEther() public virtual returns (uint _amount);

    /// @notice Called when some body delegates token to the pool
    event Delegate(address indexed _from, uint256 _amount);

    /// @notice Called when some body undelegates token to the pool
    event Undelegate(address indexed _from, uint256 _amount);

    /// @notice Called when the delegate set se vote intention
    event VoteIntentionSet(uint indexed _proposalID, bool _willVote, bool _supportsProposal);

    /// @notice Called when the vote is executed in the DAO
    event VoteExecuted(uint indexed _proposalID);

}

abstract contract DTHPool is DTHPoolInterface, Token, usingOraclize {

    modifier onlyDelegate() {assert(!(msg.sender != delegate));  _;}

    // DTHPool(address _daoAddress, address _delegate, uint _maxTimeBlocked, string _delegateName, string _delegateUrl, string _tokenSymbol);

    constructor(
        address _daoAddress,
        address _delegate,
        uint _maxTimeBlocked,
        string memory _delegateName,
        string memory _delegateUrl,
        string memory _tokenSymbol
    ) {
        daoAddress = _daoAddress;
        delegate = _delegate;
        delegateUrl = _delegateUrl;
        maxTimeBlocked = _maxTimeBlocked;
        name = _delegateName;
        symbol = _tokenSymbol;
        decimals = 16;
        oraclize_setNetwork(networkID_auto);
    }

    function delegateDAOTokens(uint _amount) public override returns (bool _success) {
        DAO dao = DAO(daoAddress);
        assert (!(!dao.transferFrom(msg.sender, address(this), _amount)));

        balances[msg.sender] += _amount;
        totalSupply += _amount;
        emit Delegate(msg.sender, _amount);
        return true;
    }

    function undelegateDAOTokens(uint _amount) public override returns (bool _success) {
        DAO dao = DAO(daoAddress);
        assert(!(_amount > balances[msg.sender]));

        assert(!(!dao.transfer(msg.sender, _amount))); 

        balances[msg.sender] -= _amount;
        totalSupply -= _amount;
        emit Undelegate(msg.sender, _amount);
        return true;
    }

    function setVoteIntention(
        uint _proposalID,
        bool _willVote,
        bool _supportsProposal,
        string memory _motivation
    ) onlyDelegate public override returns (bool _success) {
        DAO dao = DAO(daoAddress);

        ProposalStatus storage proposalStatus = proposalStatuses[_proposalID];

        assert(!(proposalStatus.voteSet));

        (,,,uint votingDeadline, ,,,,bool newCurator) = dao.proposals(_proposalID);

        assert(!(votingDeadline < block.timestamp || newCurator )) ;

        proposalStatus.voteSet = true;
        proposalStatus.willVote = _willVote;
        proposalStatus.suportProposal = _supportsProposal;
        proposalStatus.votingDeadline = votingDeadline;
        proposalStatus.motivation = _motivation;

        emit VoteIntentionSet(_proposalID, _willVote, _supportsProposal);

        if (!_willVote) {
            proposalStatus.executed = true;
            emit VoteExecuted(_proposalID);
        }

        bool finalized = executeVote(_proposalID);

        if ((!finalized)&&(address(OAR) != address(0))) {
            bytes32 oraclizeId = oraclize_query(votingDeadline - maxTimeBlocked +15, "URL", "");

            oraclizeId2proposalId[oraclizeId] = _proposalID;
        }

        return true;
    }

    function executeVote(uint _proposalID) public override returns (bool _finalized) {
        DAO dao = DAO(daoAddress);
        ProposalStatus storage proposalStatus = proposalStatuses[_proposalID];

        if (!proposalStatus.voteSet
            || block.timestamp > proposalStatus.votingDeadline
            || !proposalStatus.willVote
            || proposalStatus.executed) {

            return true;
        }

        if (block.timestamp < proposalStatus.votingDeadline - maxTimeBlocked) {
            return false;
        }

        dao.vote(_proposalID, proposalStatus.suportProposal);
        proposalStatus.executed = true;
        emit VoteExecuted(_proposalID);

        return true;
    }

    function __callback(bytes32 oid, string memory result) public {
        uint proposalId = oraclizeId2proposalId[oid];
        executeVote(proposalId);
        oraclizeId2proposalId[oid] = 0;
    }

    function fixTokens() public override returns (bool _success) {
        DAO dao = DAO(daoAddress);
        uint ownedTokens = dao.balanceOf(address(this));
        assert (!(ownedTokens < totalSupply));
        uint fixTokens = ownedTokens - totalSupply;

        if (fixTokens == 0) {
            return true;
        }

        balances[delegate] += fixTokens;
        totalSupply += fixTokens;

        return true;
    }

    function getEther() onlyDelegate public override returns (uint _amount) {
        uint amount = address(this).balance;

        (bool success, ) = delegate.call{value: amount}("");
        assert(success);

        return amount;
    }

}