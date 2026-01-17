// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./DummyTokens.sol";
import "./BurgerSwap.sol"; // Contains IDemaxConfig, IDgas, DemaxPair

/// @notice dummy BURGER token used as the valuable asset in the pair
contract BurgerToken is ERC20Mock {
    constructor() ERC20Mock("Burger Token", "BURGER") {}
}

/// @notice Stub configuration contract to satisfy DemaxPair's onlyPlatform checks
contract ConfigStub is IDemaxConfig {
    address public override governor;
    address public override dev;
    uint public override PERCENT_DENOMINATOR;

    address private _platform;

    constructor(address platform_) {
        governor = address(0);
        dev = address(0);
        PERCENT_DENOMINATOR = 10000;
        _platform = platform_;
    }

    function getConfig(bytes32)               external pure override returns
        (uint minValue, uint maxValue, uint maxSpan, uint value, uint enable)
    { return (0,0,0,0,0); }
    function getConfigValue(bytes32)          external pure override returns (uint)     { return 0; }
    function changeConfigValue(bytes32, uint) external pure override returns (bool)     { return false; }
    function checkToken(address)              external pure override returns (bool)     { return true; }
    function checkPair(address, address)      external pure override returns (bool)     { return true; }
    function listToken(address)               external pure override returns (bool)     { return true; }
    function getDefaultListTokens()           external pure override returns (address[] memory)
    { return new address[](0); }
    function addToken(address)                external pure override returns (bool)     { return true; }
    function platform()                       external view override returns (address)  { return _platform; }
}

contract DgasStub is IDgas {
    function amountPerBlock()                    external view  override returns (uint) { return 0; }
    function changeInterestRatePerBlock(uint)    external       override returns (bool) { return true; }
    function getProductivity(address)            external view  override returns (uint, uint)
    { return (0, 0); }
    function increaseProductivity(address, uint) external       override returns (bool) { return true; }
    function decreaseProductivity(address, uint) external       override returns (bool) { return true; }
    function take()                              external view  override returns (uint) { return 0; }
    function takeWithBlock()                     external view  override returns (uint, uint)
    { return (0, 0); }
    function mint()                              external       override returns (uint) { return 0; }
    function balanceOf(address)                  external view  override returns (uint) { return 0; }
    function upgradeImpl(address)                external       override                { /* no-op */ }
    function upgradeGovernance(address)          external       override                { /* no-op */ }
}

/// @notice DummyRouter for minimal functionality testing
contract DummyRouter {
    BurgerToken public burgerToken;
    ConfigStub public config;
    DgasStub public dgas;

    mapping(address => mapping(address => address)) public pairs;

    constructor() { 
        burgerToken = new BurgerToken();
        //YultLib.__yult__revealAddress(address(burgerToken));
        //YultLib.__yult__printHex(uint160(address(burgerToken)));
        config = new ConfigStub(address(this));
        dgas = new DgasStub();

        // Mint initial supply for Router (to be used later)
        burgerToken.mint(address(this), 20000 ether);
    }
    
    /* function attack() public { */
    /*     ERC20Mock fakeToken = new ERC20Mock("FAKE", "FAKE"); */
    /*     fakeToken.mint(address(this), 20000 ether); */
    /*     address somePair = createPair(address(burgerToken),address(fakeToken)); */
    /*     mintShares(somePair,1000 ether); */
    /*     swapExactTokensForTokens(somePair,false); */
    /* } */
    
    /// @notice Create and initialize a pair explicitly
    function createPair(address tokenA, address tokenB) public returns (address pair) {
        require(pairs[tokenA][tokenB] == address(0), "Pair exists");

        DemaxPair newPair = new DemaxPair();
        newPair.initialize(tokenA, tokenB, address(config), address(dgas));
        pairs[tokenA][tokenB] = address(newPair);
        pairs[tokenB][tokenA] = address(newPair);

        //YultLib.__yult__printHex(uint160(address(newPair)));
        return address(newPair);
    }

    /// @notice Mint LP shares after funding the pair with equal token amounts
    /// we are funding from address(this), which is ok because it doesn't matter who exactly
    /// is funding the pair. we just want to test if anyone can break the logic.
    function mintShares(
        address pairAddr,
        uint256 amount
    ) public {
        address token0 = DemaxPair(pairAddr).token0();
        address token1 = DemaxPair(pairAddr).token1();
        require(pairs[token0][token1] == pairAddr && pairAddr != address(0), "Pair not registered");
        ERC20Mock(token0).transfer(pairAddr, amount); // mock transfers without approval, and transfer
        ERC20Mock(token1).transfer(pairAddr, amount); // happens from address(this), just to test the logic
        DemaxPair(pairAddr).mint(msg.sender);
        (uint112 r0, uint112 r1, ) = DemaxPair(pairAddr).getReserves();
    }
    
    /// @notice exchange tokens without a fee, just to test the logic
    function swapExactTokensForTokens(
        address pairAddr,
        bool zeroForOne
    ) public {
        uint256 amountIn = 20000 ether;
        
        // 1) Identify tokens and reserves from the pair
        address token0 = DemaxPair(pairAddr).token0();
        address token1 = DemaxPair(pairAddr).token1();
        require(pairs[token0][token1] == pairAddr && pairAddr != address(0), "Pair not registered");

        // 3) Pull tokens into the pair

        if (zeroForOne) {
            // Drain token0
            ERC20Mock(token1).mint(msg.sender, 1);
            require(ERC20Mock(token1).transfer(pairAddr, amountIn),"TRANSFER_FAILED");
            DemaxPair(pairAddr).swap(1, 0, address(this), "");
        } else {
            // Drain token1
            ERC20Mock(token0).mint(msg.sender, 1);
            require(ERC20Mock(token0).transfer(pairAddr, amountIn),"TRANSFER_FAILED");
            DemaxPair(pairAddr).swap(0, 1, address(this), "");
        }
        
    }

}
