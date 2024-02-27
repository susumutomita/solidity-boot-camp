// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ArrayManipulation} from "../src/ArrayManipulation.sol";

contract ArrayManipulationTest is Test {
    ArrayManipulation public arrayManipulation;

    function setUp() public {
        arrayManipulation = new ArrayManipulation();
        arrayManipulation.addItem(0);
    }

    function test_Increment() public {
        arrayManipulation.addItem(1);
        arrayManipulation.addItem(2);
        uint[] memory expected = new uint[](3);
        expected[0] = 0;
        expected[1] = 1;
        expected[2] = 2;
        assertEq(arrayManipulation.getArray(), expected);
    }

}
