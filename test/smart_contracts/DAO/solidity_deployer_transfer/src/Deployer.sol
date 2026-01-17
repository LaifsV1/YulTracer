// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./DAO.sol";

contract Deployer {
    DAO_Creator public daoCreator;
    DAO public dao;

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
    }
}
