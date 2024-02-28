// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/ArrayManipulation.sol";

contract ArrayManipulationScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
        ArrayManipulation arrayManipulation = new ArrayManipulation();
        vm.stopBroadcast();
    }
}
