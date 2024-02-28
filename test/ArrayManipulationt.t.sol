// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ArrayManipulation} from "../src/ArrayManipulation.sol";

contract ArrayManipulationTest is Test {
    ArrayManipulation public arrayManipulation;

    function setUp() public {
        arrayManipulation = new ArrayManipulation();
    }

    function test_Increment() public {
        arrayManipulation.addItem(0);
        arrayManipulation.addItem(1);
        arrayManipulation.addItem(2);
        uint256[] memory expected = new uint256[](3);
        expected[0] = 0;
        expected[1] = 1;
        expected[2] = 2;
        assertEq(arrayManipulation.getArray(), expected);
    }

    function test_DeleteItem() public {
        arrayManipulation.addItem(0);
        arrayManipulation.addItem(1);
        arrayManipulation.addItem(2);
        arrayManipulation.deleteItem(1);
        uint256[] memory expected = new uint256[](2);
        expected[0] = 0;
        expected[1] = 2;
        assertEq(arrayManipulation.getArray(), expected);
    }

    function test_Order() public {
        arrayManipulation.addItem(0);
        arrayManipulation.addItem(1);
        arrayManipulation.addItem(2);
        arrayManipulation.addItem(3);
        arrayManipulation.addItem(4);
        arrayManipulation.deleteItem(1);
        arrayManipulation.deleteItem(1);
        uint256[] memory expected = new uint256[](3);
        expected[0] = 0;
        expected[1] = 3;
        expected[2] = 4;
        assertEq(arrayManipulation.getArray(), expected);
    }
}
