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
  An Offer from a Contractor to the DAO. No logic about the DAO reward is
  included in this contract.

  Feel free to use as a base contract for your own proposal.

  Actors:
  - Offerer:    the entity that creates the Offer. Usually it is the initial
                Contractor.
  - Contractor: the entity that has rights to withdraw ether to perform
                its project.
  - Client:     the DAO that gives ether to the Contractor. It accepts
                the Offer, can adjust daily withdraw limit or even fire the
                Contractor.
*/

// SPDX-License-Identifier: UNLICENSED

import "./DAO.sol";

pragma solidity ^0.8.0;

contract Offer {

    // Period of time after the passing of a proposal during which the offer
    // contract can not be signed in order to provide enough time to anyone
    // who may want to split off the DAO to do so.
    uint constant splitGracePeriod = 8 days;

    // The total cost of the Offer for the Client. Exactly this amount is
    // transfered from the Client to the Offer contract when the Offer is
    // accepted by the Client. Set once by the Offerer.
    uint totalCost;

    // Initial withdrawal to the Contractor. It is done the moment the
    // Offer is accepted. Set once by the Offerer.
    uint initialWithdrawal;

    // The minimum daily withdrawal limit that the Contractor accepts.
    // Set once by the Offerer.
    uint128 minDailyWithdrawalLimit;

    // The amount of wei the Contractor has right to withdraw daily above the
    // initial withdrawal. The Contractor does not have to perform the
    // withdrawals every day as this amount accumulates.
    uint128 dailyWithdrawalLimit;

    // Period of time after which money can be withdrawn from this contract
    uint payoutFreezePeriod;

    // The address of the Contractor.
    address contractor;

    // The hash of the Proposal/Offer document.
    bytes32 hashOfTheProposalDocument;

    // The time of the last withdrawal to the Contractor.
    uint lastWithdrawal;

    // The timestamp when the offer contract was accepted.
    uint dateOfSignature;

    // Voting deadline of the proposal
    uint votingDeadline;

    // The address of the current Client.
    DAO client;
    // The address of the Client who accepted the Offer.
    DAO originalClient;

    // Flag denoting whether the contract is still considered valid
    bool isContractValid;

    // Flag denoting if the initial withdrawal sum was drawn from the contract
    bool initialWithdrawalDone;


    modifier onlyClient {
        assert (!(msg.sender != address(client)));
        _;
    }

    // Prevents methods from perfoming any value transfer
    modifier noEther() {assert (!(msg.value > 0)); _;}

    constructor(
        address _contractor,
        address payable _client,
        bytes32 _hashOfTheProposalDocument,
        uint _totalCost,
        uint _initialWithdrawal,
        uint128 _minDailyWithdrawalLimit,
        uint _payoutFreezePeriod
    ) {
        contractor = _contractor;
        originalClient = DAO(_client);
        client = DAO(_client);
        hashOfTheProposalDocument = _hashOfTheProposalDocument;
        totalCost = _totalCost;
        initialWithdrawal = _initialWithdrawal;
        minDailyWithdrawalLimit = _minDailyWithdrawalLimit;
        dailyWithdrawalLimit = _minDailyWithdrawalLimit;
        payoutFreezePeriod = _payoutFreezePeriod;
    }

    // non-value-transfer getters
    function getTotalCost() public view returns (uint) {
        return totalCost;
    }

    function getInitialWithdrawal() public view returns (uint) {
        return initialWithdrawal;
    }

    function getMinDailyWithdrawalLimit() public view returns (uint128) {
        return minDailyWithdrawalLimit;
    }

    function getDailyWithdrawalLimit() public view returns (uint128) {
        return dailyWithdrawalLimit;
    }

    function getPayoutFreezePeriod() public view returns (uint) {
        return payoutFreezePeriod;
    }

    function getContractor() public view returns (address) {
        return contractor;
    }

    function getHashOfTheProposalDocument() public view returns (bytes32) {
        return hashOfTheProposalDocument;
    }

    function getLastWithdrawal() public view returns (uint) {
        return lastWithdrawal;
    }

    function getDateOfSignature() public view returns (uint) {
        return dateOfSignature;
    }

    function getClient() public view returns (DAO) {
        return client;
    }

    function getOriginalClient() public view returns (DAO) {
        return originalClient;
    }

    function getIsContractValid() public view returns (bool) {
        return isContractValid;
    }

    function getInitialWithdrawalDone() public view returns (bool) {
        return initialWithdrawalDone;
    }

    function getVotingDeadline() public view returns (uint) {
        return votingDeadline;
    }

    function sign() public payable {
        assert (! (msg.sender != address(originalClient) // no good samaritans give us ether
            || msg.value != totalCost    // no under/over payment
            || dateOfSignature != 0      // don't accept twice
            || votingDeadline == 0       // votingDeadline needs to be set
            || block.timestamp < votingDeadline + splitGracePeriod)); // give people time to split
        

        lastWithdrawal = votingDeadline + payoutFreezePeriod;
        if (payoutFreezePeriod == 0) {
            bool sent = payable(contractor).send(initialWithdrawal);
            assert(sent);
            initialWithdrawalDone = true;
        }
        dateOfSignature = block.timestamp;
        isContractValid = true;
    }

    // Once a proposal is submitted, the Contractor should call this
    // function to set the voting deadline of the proposal
    function setVotingDeadline(uint _votingDeadline) public {
        assert (!(msg.sender != contractor || votingDeadline != 0));

        votingDeadline = _votingDeadline;
    }

    function setDailyWithdrawLimit(uint128 _dailyWithdrawalLimit) onlyClient public {
        if (_dailyWithdrawalLimit >= minDailyWithdrawalLimit)
            dailyWithdrawalLimit = _dailyWithdrawalLimit;
    }

    // Terminate the ongoing Offer.
    //
    // The Client can terminate the ongoing Offer using this method. Using it
    // on an invalid (balance 0) Offer has no effect. The Contractor loses
    // right to any ether left in the Offer.
    function terminate() onlyClient public {
        (bool success, ) = address(originalClient.DAOrewardAccount()).call{value : address(this).balance}("");
        if(success){
            isContractValid = false;
        }       
    }

    // Withdraw to the Contractor.
    //
    // Withdraw the amount of ether the Contractor has right to according to
    // the current withdraw limit.
    // Executing this function before the Offer is accepted by the Client
    // makes no sense as this contract has no ether.
    function withdraw() public {
        assert (!(msg.sender != contractor || block.timestamp < votingDeadline + payoutFreezePeriod));
        uint timeSincelastWithdrawal = block.timestamp - lastWithdrawal;
        // Calculate the amount using 1 second precision.
        uint amount = (timeSincelastWithdrawal * dailyWithdrawalLimit) / (1 days);
        if (amount > address(this).balance) {
            amount = address(this).balance;
        }
        uint lastWithdrawalReset = lastWithdrawal;
        lastWithdrawal = block.timestamp;
        if (!(payable(contractor).send(amount)))
            lastWithdrawal = lastWithdrawalReset;
    }

    // Perform the withdrawal of the initial sum of money to the contractor
    // if that did not already happen during the signing
    function performInitialWithdrawal() public {
        assert (!(msg.sender != contractor
            || block.timestamp < votingDeadline + payoutFreezePeriod
            || initialWithdrawalDone ));

        initialWithdrawalDone = true;
        assert (payable(contractor).send(initialWithdrawal));
    }

    // Change the client DAO by giving the new DAO's address
    // warning: The new DAO must come either from a split of the original
    // DAO or an update via `newContract()` so that it can claim rewards
    function updateClientAddress(DAO _newClient) onlyClient public{
        client = _newClient;
    }

    fallback () external{
        assert(false); // This is a business contract, no donations.
    }
}