/**
 *Submitted for verification at Etherscan.io on 2016-05-02
 */

/*

  - Bytecode Verification performed was compared on second iteration -

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


/*
  Basic, standardized Token contract with no "premine". Defines the functions to
  check token balances, send tokens, send tokens on behalf of a 3rd party and the
  corresponding approval process. Tokens need to be created by a derived
  contract (e.g. TokenCreation.sol).

  Thank you ConsenSys, this contract originated from:
  https://github.com/ConsenSys/Tokens/blob/master/Token_Contracts/contracts/Standard_Token.sol
  Which is itself based on the Ethereum standardized contract APIs:
  https://github.com/ethereum/wiki/wiki/Standardized_Contract_APIs
*/

// SPDX-License-Identifier: UNLICENSED

/// @title Standard Token Contract.

pragma solidity ^0.8.0;

abstract contract TokenInterface {
  mapping (address => uint256) balances;
  mapping (address => mapping (address => uint256)) allowed;

  /// Total amount of tokens
  uint256 public totalSupply;

  /// @param _owner The address from which the balance will be retrieved
  /// @return balance The balance
  function balanceOf(address _owner) public view virtual returns (uint256 balance);

  /// @notice Send `_amount` tokens to `_to` from `msg.sender`
  /// @param _to The address of the recipient
  /// @param _amount The amount of tokens to be transferred
  /// @return success Whether the transfer was successful or not
  function transfer(address _to, uint256 _amount) public virtual returns (bool success);

  /// @notice Send `_amount` tokens to `_to` from `_from` on the condition it
  /// is approved by `_from`
  /// @param _from The address of the origin of the transfer
  /// @param _to The address of the recipient
  /// @param _amount The amount of tokens to be transferred
  /// @return success Whether the transfer was successful or not
  function transferFrom(address _from, address _to, uint256 _amount) public virtual returns (bool success);

  /// @notice `msg.sender` approves `_spender` to spend `_amount` tokens on
  /// its behalf
  /// @param _spender The address of the account able to transfer the tokens
  /// @param _amount The amount of tokens to be approved for transfer
  /// @return success Whether the approval was successful or not
  function approve(address _spender, uint256 _amount) public virtual returns (bool success);

  /// @param _owner The address of the account owning tokens
  /// @param _spender The address of the account able to transfer the tokens
  /// @return remaining Amount of remaining tokens of _owner that _spender is allowed
  /// to spend
  function allowance(
                     address _owner,
                     address _spender
                     ) public view virtual returns (uint256 remaining);

  event Transfer(address indexed _from, address indexed _to, uint256 _amount);
  event Approval(
                 address indexed _owner,
                 address indexed _spender,
                 uint256 _amount
                 );
}


abstract contract Token is TokenInterface {
  // Protects users by preventing the execution of method calls that
  // inadvertently also transferred ether
  modifier noEther() {assert(!(msg.value > 0)); _;}

  function balanceOf(address _owner) public view override returns (uint256 balance) {
    return balances[_owner];
  }

  function transfer(address _to, uint256 _amount) public override returns (bool success) {
    if (balances[msg.sender] >= _amount && _amount > 0) {
      balances[msg.sender] -= _amount;
      balances[_to] += _amount;
      emit Transfer(msg.sender, _to, _amount);
      return true;
    } else {
      return false;
    }
  }

  function transferFrom(
                        address _from,
                        address _to,
                        uint256 _amount
                        ) public override returns (bool success) {

    if (balances[_from] >= _amount
        && allowed[_from][msg.sender] >= _amount
        && _amount > 0) {

      balances[_to] += _amount;
      balances[_from] -= _amount;
      allowed[_from][msg.sender] -= _amount;
      emit Transfer(_from, _to, _amount);
      return true;
    } else {
      return false;
    }
  }

  function approve(address _spender, uint256 _amount) public override returns (bool success) {
    allowed[msg.sender][_spender] = _amount;
    emit Approval(msg.sender, _spender, _amount);
    return true;
  }

  function allowance(address _owner, address _spender) public view override returns (uint256 remaining) {
    return allowed[_owner][_spender];
  }
}


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


/*
  Basic account, used by the DAO contract to separately manage both the rewards
  and the extraBalance accounts.
*/

abstract contract ManagedAccountInterface {
  // The only address with permission to withdraw from this account
  address public owner;
  // If true, only the owner of the account can receive ether from it
  bool public payOwnerOnly;
  // The sum of ether (in wei) which has been sent to this contract
  uint public accumulatedInput;

  /// @notice Sends `_amount` of wei to _recipient
  /// @param _amount The amount of wei to send to `_recipient`
  /// @param _recipient The address to receive `_amount` of wei
  /// @return True if the send completed
  function payOut(address _recipient, uint _amount) public virtual payable returns (bool);

  event PayOut(address indexed _recipient, uint _amount);
}

contract ManagedAccount is ManagedAccountInterface{

  // The constructor sets the owner of the account
  constructor(address _owner, bool _payOwnerOnly) {
    owner = _owner;
    payOwnerOnly = _payOwnerOnly;
  }

  // When the contract receives a transaction without data this is called.
  // It counts the amount of ether it receives and stores it in
  // accumulatedInput.
  fallback() external payable {
    accumulatedInput += msg.value;
  }

  function payOut(address _recipient, uint _amount) public override payable returns (bool) {
    assert(!(msg.sender != owner || msg.value > 0 || (payOwnerOnly && _recipient != owner)));
    (bool success, ) = (_recipient.call{value: _amount}(""));

    if (success) {
      emit PayOut(_recipient, _amount);
      return true;
    } else {
      return false;
    }
  }
}
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


/*
 * Token Creation contract, used by the DAO to create its tokens and initialize
 * its ether. Feel free to modify the divisor method to implement different
 * Token Creation parameters
 */


abstract contract TokenCreationInterface {

  // End of token creation, in Unix time
  uint public closingTime;
  // Minimum fueling goal of the token creation, denominated in tokens to
  // be created
  uint public minTokensToCreate;
  // True if the DAO reached its minimum fueling goal, false otherwise
  bool public isFueled;
  // For DAO splits - if privateCreation is 0, then it is a public token
  // creation, otherwise only the address stored in privateCreation is
  // allowed to create tokens
  address public privateCreation;
  // hold extra ether which has been sent after the DAO token
  // creation rate has increased
  ManagedAccount public extraBalance;
  // tracks the amount of wei given from each contributor (used for refund)
  mapping (address => uint256) weiGiven;

  /// @dev Constructor setting the minimum fueling goal and the
  /// end of the Token Creation
  /// @param _minTokensToCreate Minimum fueling goal in number of
  ///        Tokens to be created
  /// @param _closingTime Date (in Unix time) of the end of the Token Creation
  /// @param _privateCreation Zero means that the creation is public.  A
  /// non-zero address represents the only address that can create Tokens
  /// (the address can also create Tokens on behalf of other accounts)
  // This is the constructor: it can not be overloaded so it is commented out
  //  function TokenCreation(
  //  uint _minTokensTocreate,
  //  uint _closingTime,
  //  address _privateCreation
  //  );

  /// @notice Create Token with `_tokenHolder` as the initial owner of the Token
  /// @param _tokenHolder The address of the Tokens's recipient
  /// @return success Whether the token creation was successful
  function createTokenProxy(address _tokenHolder) public virtual payable returns (bool success);

  /// @notice Refund `msg.sender` in the case the Token Creation did
  /// not reach its minimum fueling goal
  function refund() public virtual;

  /// @return divisor The divisor used to calculate the token creation rate during
  /// the creation phase
  function divisor() public view virtual returns (uint divisor);

  event FuelingToDate(uint value);
  event CreatedToken(address indexed to, uint amount);
  event Refund(address indexed to, uint value);
}


abstract contract TokenCreation is TokenCreationInterface, Token {
  constructor(
              uint _minTokensToCreate,
              uint _closingTime,
              address _privateCreation) {

    closingTime = _closingTime;
    minTokensToCreate = _minTokensToCreate;
    privateCreation = _privateCreation;
    extraBalance = new ManagedAccount(address(this), true);
  }

  function createTokenProxy(address _tokenHolder) public override payable returns (bool success) {
    assert ((block.timestamp < closingTime && msg.value > 0
             && (privateCreation == address(0) || privateCreation == msg.sender)));

    uint token = (msg.value * 20) / divisor();
    (bool sent, ) = address(extraBalance).call{value: msg.value - token}("");
    require(sent, "Failed to send Ether");
    balances[_tokenHolder] += token;
    totalSupply += token;
    weiGiven[_tokenHolder] += msg.value;
    emit CreatedToken(_tokenHolder, token);
    if (totalSupply >= minTokensToCreate && !isFueled) {
      isFueled = true;
      emit FuelingToDate(totalSupply);
    }
    return true;
  }

  function refund() public override {
    if (block.timestamp > closingTime && !isFueled) {
      // Get extraBalance - will only succeed when called for the first time
      if (address(extraBalance).balance >= extraBalance.accumulatedInput())
        extraBalance.payOut(address(this), extraBalance.accumulatedInput());

      // Execute refund
      (bool success, ) = msg.sender.call{value: weiGiven[msg.sender]}("");
      if (success) {
        emit Refund(msg.sender, weiGiven[msg.sender]);
        totalSupply -= balances[msg.sender];
        balances[msg.sender] = 0;
        weiGiven[msg.sender] = 0;
      }
    }
  }

  function divisor() public view override returns (uint divisor_) {
    // The number of (base unit) tokens per wei is calculated
    // as `msg.value` * 20 / `divisor`
    // The fueling period starts with a 1:1 ratio
    if (closingTime - 2 weeks > block.timestamp) {
      return 20;
      // Followed by 10 days with a daily creation rate increase of 5%
    } else if (closingTime - 4 days > block.timestamp) {
      return (20 + (block.timestamp - (closingTime - 2 weeks)) / (1 days));
      // The last 4 days there is a constant creation rate ratio of 1:1.5
    } else {
      return 30;
    }
  }
}
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


/*
  Standard smart contract for a Decentralized Autonomous Organization (DAO)
  to automate organizational governance and decision-making.
*/


abstract contract DAOInterface is Token{

  // The amount of days for which people who try to participate in the
  // creation by calling the fallback function will still get their ether back
  uint constant creationGracePeriod = 40 days;
  // The minimum debate period that a generic proposal can have
  uint constant minProposalDebatePeriod = 2 weeks;
  // The minimum debate period that a split proposal can have
  uint constant minSplitDebatePeriod = 1 weeks;
  // Period of days inside which it's possible to execute a DAO split
  uint constant splitExecutionPeriod = 27 days;
  // Period of time after which the minimum Quorum is halved
  uint constant quorumHalvingPeriod = 25 weeks;
  // Period after which a proposal is closed
  // (used in the case `executeProposal` fails because it throws)
  uint constant executeProposalPeriod = 10 days;
  // Denotes the maximum proposal deposit that can be given. It is given as
  // a fraction of total Ether spent plus balance of the DAO
  uint constant maxDepositDivisor = 100;

  // Proposals to spend the DAO's ether or to choose a new Curator
  Proposal[] public proposals;
  // The quorum needed for each proposal is partially calculated by
  // totalSupply / minQuorumDivisor
  uint public minQuorumDivisor;
  // The unix time of the last time quorum was reached on a proposal
  uint public lastTimeMinQuorumMet;

  // Address of the curator
  address public curator;
  // The whitelist: List of addresses the DAO is allowed to send ether to
  mapping (address => bool) public allowedRecipients;

  // Tracks the addresses that own Reward Tokens. Those addresses can only be
  // DAOs that have split from the original DAO. Conceptually, Reward Tokens
  // represent the proportion of the rewards that the DAO has the right to
  // receive. These Reward Tokens are generated when the DAO spends ether.
  mapping (address => uint) public rewardToken;
  // Total supply of rewardToken
  uint public totalRewardToken;

  // The account used to manage the rewards which are to be distributed to the
  // DAO Token Holders of this DAO
  ManagedAccount public rewardAccount;

  // The account used to manage the rewards which are to be distributed to
  // any DAO that holds Reward Tokens
  ManagedAccount public DAOrewardAccount;

  // Amount of rewards (in wei) already paid out to a certain DAO
  mapping (address => uint) public DAOpaidOut;

  // Amount of rewards (in wei) already paid out to a certain address
  mapping (address => uint) public paidOut;
  // Map of addresses blocked during a vote (not allowed to transfer DAO
  // tokens). The address points to the proposal ID.
  mapping (address => uint) public blocked;

  // The minimum deposit (in wei) required to submit any proposal that is not
  // requesting a new Curator (no deposit is required for splits)
  uint public proposalDeposit;

  // the accumulated sum of all current proposal deposits
  uint sumOfProposalDeposits;

  // Contract that is able to create a new DAO (with the same code as
  // this one), used for splits
  DAO_Creator public daoCreator;

  // A proposal with `newCurator == false` represents a transaction
  // to be issued by this DAO
  // A proposal with `newCurator == true` represents a DAO split
  struct Proposal {
    // The address where the `amount` will go to if the proposal is accepted
    // or if `newCurator` is true, the proposed Curator of
    // the new DAO).
    address recipient;
    // The amount to transfer to `recipient` if the proposal is accepted.
    uint amount;
    // A plain text description of the proposal
    string description;
    // A unix timestamp, denoting the end of the voting period
    uint votingDeadline;
    // True if the proposal's votes have yet to be counted, otherwise False
    bool open;
    // True if quorum has been reached, the votes have been counted, and
    // the majority said yes
    bool proposalPassed;
    // A hash to check validity of a proposal
    bytes32 proposalHash;
    // Deposit in wei the creator added when submitting their proposal. It
    // is taken from the msg.value of a newProposal call.
    uint proposalDeposit;
    // True if this proposal is to assign a new Curator
    bool newCurator;
    // Data needed for splitting the DAO
    SplitData[] splitData;
    // Number of Tokens in favor of the proposal
    uint yea;
    // Number of Tokens opposed to the proposal
    uint nay;
    // Simple mapping to check if a shareholder has voted for it
    mapping (address => bool) votedYes;
    // Simple mapping to check if a shareholder has voted against it
    mapping (address => bool) votedNo;
    // Address of the shareholder who created the proposal
    address payable creator;
  }

    // Used only in the case of a newCurator proposal.
    struct SplitData {
      // The balance of the current DAO minus the deposit at the time of split
      uint splitBalance;
      // The total amount of DAO Tokens in existence at the time of split.
      uint totalSupply;
      // Amount of Reward Tokens owned by the DAO at the time of split.
      uint rewardToken;
      // The new DAO contract created at the time of split.
      DAO newDAO;
    }

    // Used to restrict access to certain functions to only DAO Token Holders
    modifier onlyTokenholders virtual {
    require(balanceOf(msg.sender) > 0, "Caller is not a token holder.");
    _;
  }

  /// @dev Constructor setting the Curator and the address
  /// for the contract able to create another DAO as well as the parameters
  /// for the DAO Token Creation
  /// @param _curator The Curator
  /// @param _daoCreator The contract able to (re)create this DAO
  /// @param _proposalDeposit The deposit to be paid for a regular proposal
  /// @param _minTokensToCreate Minimum required wei-equivalent tokens
  ///        to be created for a successful DAO Token Creation
  /// @param _closingTime Date (in Unix time) of the end of the DAO Token Creation
  /// @param _privateCreation If zero the DAO Token Creation is open to public, a
  /// non-zero address means that the DAO Token Creation is only for the address
  // This is the constructor: it can not be overloaded so it is commented out
  //  function DAO(
  //  address _curator,
  //  DAO_Creator _daoCreator,
  //  uint _proposalDeposit,
  //  uint _minTokensToCreate,
  //  uint _closingTime,
  //  address _privateCreation
  //  );

  /// @notice Create Token with `msg.sender` as the beneficiary
  /// @return success Whether the token creation was successful
  fallback(bytes calldata) external payable virtual returns (bytes memory);


  /// @dev This function is used to send ether back
  /// to the DAO, it can also be used to receive payments that should not be
  /// counted as rewards (donations, grants, etc.)
  /// @return bool Whether the DAO received the ether successfully
  function receiveEther() public payable virtual returns(bool);

  /// @notice `msg.sender` creates a proposal to send `_amount` Wei to
  /// `_recipient` with the transaction data `_transactionData`. If
  /// `_newCurator` is true, then this is a proposal that splits the
  /// DAO and sets `_recipient` as the new DAO's Curator.
  /// @param _recipient Address of the recipient of the proposed transaction
  /// @param _amount Amount of wei to be sent with the proposed transaction
  /// @param _description String describing the proposal
  /// @param _transactionData Data of the proposed transaction
  /// @param _debatingPeriod Time used for debating a proposal, at least 2
  /// weeks for a regular proposal, 10 days for new Curator proposal
  /// @param _newCurator Bool defining whether this proposal is about
  /// a new Curator or not
  /// @return _proposalID The proposal ID. Needed for voting on the proposal
  function newProposal(
                       address _recipient,
                       uint _amount,
                       string memory _description,
                       bytes memory _transactionData,
                       uint _debatingPeriod,
                       bool _newCurator
                       ) public virtual payable returns (uint _proposalID);

  /// @notice Check that the proposal with the ID `_proposalID` matches the
  /// transaction which sends `_amount` with data `_transactionData`
  /// to `_recipient`
  /// @param _proposalID The proposal ID
  /// @param _recipient The recipient of the proposed transaction
  /// @param _amount The amount of wei to be sent in the proposed transaction
  /// @param _transactionData The data of the proposed transaction
  /// @return _codeChecksOut Whether the proposal ID matches the transaction data or not
  function checkProposalCode(
                             uint _proposalID,
                             address _recipient,
                             uint _amount,
                             bytes memory _transactionData
                             ) public view virtual returns (bool _codeChecksOut);

  /// @notice Vote on proposal `_proposalID` with `_supportsProposal`
  /// @param _proposalID The proposal ID
  /// @param _supportsProposal Yes/No - support of the proposal
  function vote(
                uint _proposalID,
                bool _supportsProposal
                ) public virtual;

  /// @notice Checks whether proposal `_proposalID` with transaction data
  /// `_transactionData` has been voted for or rejected, and executes the
  /// transaction in the case it has been voted for.
  /// @param _proposalID The proposal ID
  /// @param _transactionData The data of the proposed transaction
  /// @return _success Whether the proposed transaction has been executed or not
  function executeProposal(
                           uint _proposalID,
                           bytes memory _transactionData
                           ) public virtual returns (bool _success);

  /// @notice ATTENTION! I confirm to move my remaining ether to a new DAO
  /// with `_newCurator` as the new Curator, as has been
  /// proposed in proposal `_proposalID`. This will burn my tokens. This can
  /// not be undone and will split the DAO into two DAO's, with two
  /// different underlying tokens.
  /// @param _proposalID The proposal ID
  /// @param _newCurator The new Curator of the new DAO
  /// @dev This function, when called for the first time for this proposal,
  /// will create a new DAO and send the sender's portion of the remaining
  /// ether and Reward Tokens to the new DAO. It will also burn the DAO Tokens
  /// of the sender.
  function splitDAO(
                    uint _proposalID,
                    address _newCurator
                    ) external virtual returns (bool _success);

  /// @dev can only be called by the DAO itself through a proposal
  /// updates the contract of the DAO by sending all ether and rewardTokens
  /// to the new DAO. The new DAO needs to be approved by the Curator
  /// @param _newContract the address of the new contract
  function newContract(address _newContract) public virtual;


  /// @notice Add a new possible recipient `_recipient` to the whitelist so
  /// that the DAO can send transactions to them (using proposals)
  /// @param _recipient New recipient address
  /// @dev Can only be called by the current Curator
  /// @return _success Whether successful or not
  function changeAllowedRecipients(address _recipient, bool _allowed) external virtual returns (bool _success);


  /// @notice Change the minimum deposit required to submit a proposal
  /// @param _proposalDeposit The new proposal deposit
  /// @dev Can only be called by this DAO (through proposals with the
  /// recipient being this DAO itself)
  function changeProposalDeposit(uint _proposalDeposit) external virtual;

  /// @notice Move rewards from the DAORewards managed account
  /// @param _toMembers If true rewards are moved to the actual reward account
  ///                   for the DAO. If not then it's moved to the DAO itself
  /// @return _success Whether the call was successful
  function retrieveDAOReward(bool _toMembers) external virtual returns (bool _success);

  /// @notice Get my portion of the reward that was sent to `rewardAccount`
  /// @return _success Whether the call was successful
  function getMyReward() public virtual returns(bool _success);

  /// @notice Withdraw `_account`'s portion of the reward from `rewardAccount`
  /// to `_account`'s balance
  /// @return _success Whether the call was successful
  function withdrawRewardFor(address _account) internal virtual returns (bool _success);

  /// @notice Send `_amount` tokens to `_to` from `msg.sender`. Prior to this
  /// getMyReward() is called.
  /// @param _to The address of the recipient
  /// @param _amount The amount of tokens to be transfered
  /// @return success Whether the transfer was successful or not
  function transferWithoutReward(address _to, uint256 _amount) public virtual returns (bool success);

  /// @notice Send `_amount` tokens to `_to` from `_from` on the condition it
  /// is approved by `_from`. Prior to this getMyReward() is called.
  /// @param _from The address of the sender
  /// @param _to The address of the recipient
  /// @param _amount The amount of tokens to be transfered
  /// @return success Whether the transfer was successful or not
  function transferFromWithoutReward(
                                     address _from,
                                     address _to,
                                     uint256 _amount
                                     ) public virtual returns (bool success);

  /// @notice Doubles the 'minQuorumDivisor' in the case quorum has not been
  /// achieved in 52 weeks
  /// @return _success Whether the change was successful or not
  function halveMinQuorum() public virtual returns (bool _success);

  /// @return _numberOfProposals total number of proposals ever created
  function numberOfProposals() public view virtual returns (uint _numberOfProposals);

  /// @param _proposalID Id of the new curator proposal
  /// @return _newDAO Address of the new DAO
  function getNewDAOAddress(uint _proposalID) public view virtual returns (address _newDAO);

  /// @param _account The address of the account which is checked.
  /// @return Whether the account is blocked (not allowed to transfer tokens) or not.
  function isBlocked(address _account) internal virtual returns (bool);

  /// @notice If the caller is blocked by a proposal whose voting deadline
  /// has exprired then unblock him.
  /// @return Whether the account is blocked (not allowed to transfer tokens) or not.
  function unblockMe() public virtual returns (bool);

  event ProposalAdded(
                      uint indexed proposalID,
                      address recipient,
                      uint amount,
                      bool newCurator,
                      string description
                      );
  event Voted(uint indexed proposalID, bool position, address indexed voter);
  event ProposalTallied(uint indexed proposalID, bool result, uint quorum);
  event NewCurator(address indexed _newCurator);
  event AllowedRecipientChanged(address indexed _recipient, bool _allowed);
}

// The DAO contract itself
contract DAO is DAOInterface, TokenCreation {

  /// @dev simple non‐reentrant guard
  bool private _entered;

  modifier nonReentrant() {
    require(!_entered, "Reentrant call");
    _entered = true;
    _;
    _entered = false;
  }

  // Modifier that allows only shareholders to vote and create new proposals
  modifier onlyTokenholders override {
    assert(!(balanceOf(msg.sender) == 0));
    _;
  }

  constructor(
              address _curator,
              DAO_Creator _daoCreator,
              uint _proposalDeposit,
              uint _minTokensToCreate,
              uint _closingTime,
              address _privateCreation
              ) TokenCreation(_minTokensToCreate, _closingTime, _privateCreation) {

    curator = _curator;
    daoCreator = _daoCreator;
    proposalDeposit = _proposalDeposit;
    rewardAccount = new ManagedAccount(address(this), false);
    DAOrewardAccount = new ManagedAccount(address(this), false);
    assert(!(address(rewardAccount) == address(0)));
    assert(!(address(DAOrewardAccount) == address(0)));
    lastTimeMinQuorumMet = block.timestamp;
    minQuorumDivisor = 5; // sets the minimal quorum to 20%
    proposals.push(); // avoids a proposal with ID 0 because it is used

    allowedRecipients[address(this)] = true;
    allowedRecipients[curator] = true;
  }

  fallback(bytes calldata) external payable override returns (bytes memory) {
    if (block.timestamp < closingTime + creationGracePeriod && msg.sender != address(extraBalance))
      return abi.encode(createTokenProxy(msg.sender));
    else
      return abi.encode(receiveEther());
  }


  function receiveEther() public payable override returns (bool) {
    return true;
  }


  function newProposal(
                       address _recipient,
                       uint _amount,
                       string memory _description,
                       bytes memory _transactionData,
                       uint _debatingPeriod,
                       bool _newCurator
                       ) onlyTokenholders public override payable returns (uint _proposalID) {

    // Sanity check
    assert(!(_newCurator && (
                             _amount != 0
                             || _transactionData.length != 0
                             || _recipient == curator
                             || msg.value > 0
                             || _debatingPeriod < minSplitDebatePeriod)) );

    assert(!(
             !_newCurator
             && (!isRecipientAllowed(_recipient) || (_debatingPeriod <  minProposalDebatePeriod))
             ));

    assert(!(_debatingPeriod > 8 weeks));

    assert(!(!isFueled
             || block.timestamp < closingTime
             || (msg.value < proposalDeposit && !_newCurator)));

    assert(!(block.timestamp + _debatingPeriod < block.timestamp)); // prevents overflow


    // to prevent a 51% attacker to convert the ether into deposit
    assert (!(msg.sender == address(this)));

    _proposalID = proposals.length;
    proposals.push();
    Proposal storage p = proposals[_proposalID];
    p.recipient = _recipient;
    p.amount = _amount;
    p.description = _description;
    p.proposalHash = keccak256(abi.encodePacked(p.recipient, p.amount, _transactionData));
    p.votingDeadline = block.timestamp + _debatingPeriod;
    p.open = true;
    //p.proposalPassed = False; // that's default
    p.newCurator = _newCurator;
    if (_newCurator)
      p.splitData.push();
    p.creator = payable(msg.sender);
    p.proposalDeposit = msg.value;

    sumOfProposalDeposits += msg.value;

    emit ProposalAdded(
                       _proposalID,
                       _recipient,
                       _amount,
                       _newCurator,
                       _description
                       );
  }


  function checkProposalCode(
                             uint _proposalID,
                             address _recipient,
                             uint _amount,
                             bytes memory _transactionData
                             ) public view override returns (bool _codeChecksOut) {
    Proposal storage p = proposals[_proposalID];
    return p.proposalHash == keccak256(abi.encodePacked(_recipient, _amount, _transactionData));
  }


  function vote(
                uint _proposalID,
                bool _supportsProposal
                ) onlyTokenholders public override {

    Proposal storage p = proposals[_proposalID];
    assert (!(p.votedYes[msg.sender]
              || p.votedNo[msg.sender]
              || block.timestamp >= p.votingDeadline));

    if (_supportsProposal) {
      p.yea += balances[msg.sender];
      p.votedYes[msg.sender] = true;
    } else {
      p.nay += balances[msg.sender];
      p.votedNo[msg.sender] = true;
    }

    if (blocked[msg.sender] == 0) {
      blocked[msg.sender] = _proposalID;
    } else if (p.votingDeadline > proposals[blocked[msg.sender]].votingDeadline) {
      // this proposal's voting deadline is further into the future than
      // the proposal that blocks the sender so make it the blocker
      blocked[msg.sender] = _proposalID;
    }

    emit Voted(_proposalID, _supportsProposal, msg.sender);
  }


  function executeProposal(
                           uint _proposalID,
                           bytes memory _transactionData
                           ) public override returns (bool _success) {

    Proposal storage p = proposals[_proposalID];

    uint waitPeriod = p.newCurator
      ? splitExecutionPeriod
      : executeProposalPeriod;
    // If we are over deadline and waiting period, assert proposal is closed
    if (p.open && block.timestamp > p.votingDeadline + waitPeriod) {
      closeProposal(_proposalID);
      return false;
    }

    // Check if the proposal can be executed
    assert (!(block.timestamp < p.votingDeadline  // has the voting deadline arrived?
              // Have the votes been counted?
              || !p.open
              // Does the transaction code match the proposal?
              || p.proposalHash != keccak256(abi.encodePacked(p.recipient, p.amount, _transactionData))));

    // If the curator removed the recipient from the whitelist, close the proposal
    // in order to free the deposit and allow unblocking of voters
    if (!isRecipientAllowed(p.recipient)) {
      closeProposal(_proposalID);
      p.creator.send(p.proposalDeposit);
      return false;
    }

    bool proposalCheck = true;

    if (p.amount > actualBalance())
      proposalCheck = false;

    uint quorum = p.yea + p.nay;

    // require 53% for calling newContract()
    if (_transactionData.length >= 4 && _transactionData[0] == 0x68
        && _transactionData[1] == 0x37 && _transactionData[2] == 0xff
        && _transactionData[3] == 0x1e
        && quorum < minQuorum(actualBalance() + rewardToken[address(this)])) {

      proposalCheck = false;
    }

    if (quorum >= minQuorum(p.amount)) {
      assert(!(!p.creator.send(p.proposalDeposit)));


      lastTimeMinQuorumMet = block.timestamp;
      // set the minQuorum to 20% again, in the case it has been reached
      if (quorum > totalSupply / 5)
        minQuorumDivisor = 5;
    }

    // Execute result
    if (quorum >= minQuorum(p.amount) && p.yea > p.nay && proposalCheck) {
      (bool success, ) = p.recipient.call{value: p.amount}(_transactionData);
      assert(success);
      p.proposalPassed = true;
      _success = true;

      // only create reward tokens when ether is not sent to the DAO itself and
      // related addresses. Proxy addresses should be forbidden by the curator.
      if (p.recipient != address(this) && p.recipient != address(rewardAccount)
          && p.recipient != address(DAOrewardAccount)
          && p.recipient != address(extraBalance)
          && p.recipient != address(curator)) {

        rewardToken[address(this)] += p.amount;
        totalRewardToken += p.amount;
      }
    }

    closeProposal(_proposalID);

    // Initiate event
    emit ProposalTallied(_proposalID, _success, quorum);
  }


  function closeProposal(uint _proposalID) internal {
    Proposal storage p = proposals[_proposalID];
    if (p.open)
      sumOfProposalDeposits -= p.proposalDeposit;
    p.open = false;
  }


  function splitDAO(
                    uint _proposalID,
                    address _newCurator
                    ) onlyTokenholders external override nonReentrant returns (bool _success) {

    Proposal storage p = proposals[_proposalID];

    // Sanity check

    assert(!(block.timestamp < p.votingDeadline  // has the voting deadline arrived?
             //The request for a split expires XX days after the voting deadline
             || block.timestamp > p.votingDeadline + splitExecutionPeriod
             // Does the new Curator address match?
             || p.recipient != _newCurator
             // Is it a new curator proposal?
             || !p.newCurator
             // Have you voted for this split?
             || !p.votedYes[msg.sender]
             // Did you already vote on another proposal?
             || (blocked[msg.sender] != _proposalID && blocked[msg.sender] != 0) ));

    // If the new DAO doesn't exist yet, create the new DAO and store the
    // current split data
    if (address(p.splitData[0].newDAO) == address(0)) {
      p.splitData[0].newDAO = createNewDAO(_newCurator);
      // Call depth limit reached, etc.
      assert (!(address(p.splitData[0].newDAO) == address(0)));
      // should never happen
      assert(!(address(this).balance < sumOfProposalDeposits));
      p.splitData[0].splitBalance = actualBalance();
      p.splitData[0].rewardToken = rewardToken[address(this)];
      p.splitData[0].totalSupply = totalSupply;
      p.proposalPassed = true;
    }


    
    // Move ether and assign new Tokens
    uint fundsToBeMoved =
      (balances[msg.sender] * p.splitData[0].splitBalance) /
      p.splitData[0].totalSupply;
    assert(!(p.splitData[0].newDAO.createTokenProxy{value : fundsToBeMoved}(msg.sender) == false));



    // Assign reward rights to new DAO
    uint rewardTokenToBeMoved =
      (balances[msg.sender] * p.splitData[0].rewardToken) /
      p.splitData[0].totalSupply;

    uint paidOutToBeMoved = DAOpaidOut[address(this)] * rewardTokenToBeMoved /
      rewardToken[address(this)];

    rewardToken[address(p.splitData[0].newDAO)] += rewardTokenToBeMoved;
    assert(!(rewardToken[address(this)] < rewardTokenToBeMoved));
    rewardToken[address(this)] -= rewardTokenToBeMoved;

    DAOpaidOut[address(p.splitData[0].newDAO)] += paidOutToBeMoved;
    assert(!(DAOpaidOut[address(this)] < paidOutToBeMoved));
    DAOpaidOut[address(this)] -= paidOutToBeMoved;



    // Burn DAO Tokens
    emit Transfer(msg.sender, address(0), balances[msg.sender]);
    withdrawRewardFor(msg.sender); // be nice, and get his rewards
    totalSupply -= balances[msg.sender];
    balances[msg.sender] = 0;
    paidOut[msg.sender] = 0;
    return true;
  }

  function newContract(address _newContract) public override{
    if (msg.sender != address(this) || !allowedRecipients[_newContract]) return;
    // move all ether
    (bool success, ) = _newContract.call{value: address(this).balance}("");
    assert(success);

    //move all reward tokens
    rewardToken[_newContract] += rewardToken[address(this)];
    rewardToken[address(this)] = 0;
    DAOpaidOut[_newContract] += DAOpaidOut[address(this)];
    DAOpaidOut[address(this)] = 0;
  }

  function retrieveDAOReward(bool _toMembers) external override returns (bool _success) {
    DAO dao = DAO(payable(msg.sender));

    assert(!((rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput()) /
             totalRewardToken < DAOpaidOut[msg.sender]));


    uint reward =
      (rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput()) /
      totalRewardToken - DAOpaidOut[msg.sender];
    if(_toMembers) {
      assert(DAOrewardAccount.payOut(address(dao.rewardAccount()), reward));
    }
    else {
      assert(DAOrewardAccount.payOut(address(dao), reward));
    }
    DAOpaidOut[msg.sender] += reward;
    return true;
  }

  function getMyReward() public override returns (bool _success) {
    return withdrawRewardFor(msg.sender);
  }


  function withdrawRewardFor(address _account) internal override returns (bool _success) {
    assert(!((balanceOf(_account) * rewardAccount.accumulatedInput()) / totalSupply < paidOut[_account]));

    uint reward =
      (balanceOf(_account) * rewardAccount.accumulatedInput()) / totalSupply - paidOut[_account];
    assert(rewardAccount.payOut(_account, reward));
    paidOut[_account] += reward;
    return true;
  }


  function transfer_2(address _to, uint256 _value) public returns (bool success) {
    if (isFueled
        && block.timestamp > closingTime
        && !isBlocked(msg.sender)
        && transferPaidOut(msg.sender, _to, _value)
        && super.transfer(_to, _value)) {

      return true;
    } else {
      assert(false);
    }
  }


  function transferWithoutReward(address _to, uint256 _value) public override returns (bool success) {
    assert(getMyReward());
    return transfer(_to, _value);
  }


  function transferFrom_2(address _from, address _to, uint256 _value) public returns (bool success) {
    if (isFueled
        && block.timestamp > closingTime
        && !isBlocked(_from)
        && transferPaidOut(_from, _to, _value)
        && super.transferFrom(_from, _to, _value)) {

      return true;
    } else {
      assert(false);
    }
  }


  function transferFromWithoutReward(
                                     address _from,
                                     address _to,
                                     uint256 _value
                                     ) public override returns (bool success) {

    assert(!(!withdrawRewardFor(_from)));
    return transferFrom(_from, _to, _value);
  }


  function transferPaidOut(
                           address _from,
                           address _to,
                           uint256 _value
                           ) internal returns (bool success) {

    uint transferPaidOut_ = paidOut[_from] * _value / balanceOf(_from);
    assert(! (transferPaidOut_ > paidOut[_from]));
    paidOut[_from] -= transferPaidOut_;
    paidOut[_to] += transferPaidOut_;
    return true;
  }


  function changeProposalDeposit(uint _proposalDeposit) external override {
    assert(!(msg.sender != address(this) || _proposalDeposit > (actualBalance() + rewardToken[address(this)])
             / maxDepositDivisor)) ;
    proposalDeposit = _proposalDeposit;
  }


  function changeAllowedRecipients(address _recipient, bool _allowed) external override returns (bool _success) {
    assert(msg.sender == curator);
    allowedRecipients[_recipient] = _allowed;
    emit AllowedRecipientChanged(_recipient, _allowed);
    return true;
  }


  function isRecipientAllowed(address _recipient) view internal returns (bool _isAllowed) {
    if (allowedRecipients[_recipient]
        || (_recipient == address(extraBalance)
            // only allowed when at least the amount held in the
            // extraBalance account has been spent from the DAO
            && totalRewardToken > extraBalance.accumulatedInput()))
      return true;
    else
      return false;
  }

  function actualBalance() public view returns (uint _actualBalance) {
    return address(this).balance - sumOfProposalDeposits;
  }


  function minQuorum(uint _value) internal view returns (uint _minQuorum) {
    // minimum of 20% and maximum of 53.33%
    return totalSupply / minQuorumDivisor +
      (_value * totalSupply) / (3 * (actualBalance() + rewardToken[address(this)]));
  }


  function halveMinQuorum() public override returns (bool _success) {
    // this can only be called after `quorumHalvingPeriod` has passed or at anytime
    // by the curator with a delay of at least `minProposalDebatePeriod` between the calls
    if ((lastTimeMinQuorumMet < (block.timestamp - quorumHalvingPeriod) || msg.sender == curator)
        && lastTimeMinQuorumMet < (block.timestamp - minProposalDebatePeriod)) {
      lastTimeMinQuorumMet = block.timestamp;
      minQuorumDivisor *= 2;
      return true;
    } else {
      return false;
    }
  }

  function createNewDAO(address _newCurator) internal returns (DAO _newDAO) {
    emit NewCurator(_newCurator);
    return daoCreator.createDAO(_newCurator, 0, 0, block.timestamp + splitExecutionPeriod);
  }

  function numberOfProposals() public view override returns (uint _numberOfProposals) {
    // Don't count index 0. It's used by isBlocked() and exists from start
    return proposals.length - 1;
  }

  function getNewDAOAddress(uint _proposalID) public view override returns (address _newDAO) {
    return address(proposals[_proposalID].splitData[0].newDAO);
  }

  function isBlocked(address _account) internal override returns (bool) {
    if (blocked[_account] == 0)
      return false;
    Proposal storage p = proposals[blocked[_account]];
    if (block.timestamp > p.votingDeadline) {
      blocked[_account] = 0;
      return false;
    } else {
      return true;
    }
  }

  function unblockMe() public override returns (bool) {
    return isBlocked(msg.sender);
  }
}

contract DAO_Creator {
  function createDAO(
                     address _curator,
                     uint _proposalDeposit,
                     uint _minTokensToCreate,
                     uint _closingTime
                     ) public returns (DAO _newDAO) {

    return new DAO(
                   _curator,
                   DAO_Creator(this),
                   _proposalDeposit,
                   _minTokensToCreate,
                   _closingTime,
                   msg.sender
                   );
  }
}
