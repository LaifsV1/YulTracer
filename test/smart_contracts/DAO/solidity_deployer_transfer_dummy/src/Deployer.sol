// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./DAO.sol";

contract DummyTransferer {
  /// @dev DAO contract instance
  DAO public dao;

  /// @param _dao The address of the deployed DAO contract
  constructor(DAO _dao) {
    dao = _dao;
  }

  /// @notice Transfers the entire DAO token balance of this contract to the caller
  function transferToCaller() external {
    uint256 balance = dao.balanceOf(address(this));
    require(balance > 0, "No tokens available");

    // Transfer entire balance to the caller
    bool success = dao.transfer(msg.sender, balance);
    require(success, "Transfer failed");
  }
}

contract Deployer {
    DAO_Creator public daoCreator;
    DAO public dao;
    DummyTransferer public dummy;

    constructor() payable {
        // 1. Deploy DAO_Creator
        daoCreator = new DAO_Creator();

        // 2. Hard-coded parameters
        address curator = address(0x908070605040302010);
        uint256 proposalDeposit = 7;
        uint256 minTokensToCreate = 10;
        uint256 closingTime = block.timestamp + 15 days;
        address privateCreation = address(0);

        // 3. Deploy DAO contract
        dao = new DAO(
            curator,daoCreator,
            proposalDeposit,minTokensToCreate,closingTime,
            privateCreation
        );

        // 4. Deploy dummy transfer contract that just transfers tokens back to the caller
        dummy = new DummyTransferer(dao);
        __yult__revealAddress(address(dummy));
    }

    function __yult__revealAddress(address) pure internal {}

}
