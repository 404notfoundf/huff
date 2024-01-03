// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Script.sol";

interface Sandwich {
    function recoverERC20(address token) external;
}

contract DeploySandwich is Script {
    function run() public {

        address a = HuffDeployer.deploy("Sandwich");
        console2.log("sandwich deployed to: ", a);
    }
}
