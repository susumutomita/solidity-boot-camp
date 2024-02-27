// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract ArrayManipulation {
    uint[] public array;

    function addItem(uint item) public {
        array.push(item);
    }

    function deleteItem(uint index) public {
        require(index < array.length, "Index out of bounds");
        array[index] = array[array.length - 1];
        array.pop();
    }

    function getArray() public view returns (uint[] memory) {
        return array;
    }
}
