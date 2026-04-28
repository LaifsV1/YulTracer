// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Wallet.sol";
import {Yult} from "YulTracerLib.sol";

contract Deployer {

    constructor() {
        address[] memory _owners = new address[](1);
        _owners[0] = address(this);
        Yult.printHex(1);
        WalletLibrary walletLibrary = new WalletLibrary();
        Yult.printHex(2);
        Yult.printHex(uint(uint160(address(walletLibrary))));
        new Wallet(_owners, 0 , 0);
        Yult.printHex(3);
    }

}
