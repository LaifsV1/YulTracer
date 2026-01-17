/*
 * @source: https://github.com/SmartContractSecurity/SWC-registry/blob/master/test_cases/reentracy/modifier_reentrancy.sol
 * @author: - 
 * @vulnerable_at_lines: 15
 */

pragma solidity ^0.8.0;

contract ModifierEntrancy {
  mapping (address => uint256) public tokenBalance;
  string constant name = "Nu Token";

  function __yult__assert(bool condition) private pure { } // DUMMY FUNCTION
  function __yult__printHex(bytes32 number) private pure { } // DUMMY FUNCTION
  
  //If a contract has a zero balance and supports the token give them some token
  // <yes> <report> REENTRANCY
  function airDrop() hasNoBalance supportsToken public {
    tokenBalance[msg.sender] += 20;
    __yult__assert(tokenBalance[msg.sender] == 20);
  }

  //Checks that the contract responds the way we want
  modifier supportsToken() {
    __yult__printHex(keccak256(abi.encodePacked("Nu Token")));
    require(keccak256(abi.encodePacked("Nu Token")) == Bank(msg.sender).supportsToken());
    _;
  }
  //Checks that the caller has a zero balance
  modifier hasNoBalance {
      require(tokenBalance[msg.sender] == 0);
      _;
  }
}

// NOTE: `pure` annotation was removed. this is because in 0.8.0, this compiles to a STATICCALL
// i.e. in 0.5.0+, the original file is actually a safe contract. STATICCALL was a change in 0.5.0.
contract Bank{
    function supportsToken() external returns(bytes32){ 
        return(keccak256(abi.encodePacked("Nu Token")));
    }
}

//contract attack{ //An example of a contract that breaks the contract above.
//    bool hasBeenCalled;
//    function supportsToken() external returns(bytes32){
//        if(!hasBeenCalled){
//            hasBeenCalled = true;
//            ModifierEntrancy(msg.sender).airDrop();
//        }
//        return(keccak256(abi.encodePacked("Nu Token")));
//    }
//    function call(address token) public{
//        ModifierEntrancy(token).airDrop();
//    }
//}
