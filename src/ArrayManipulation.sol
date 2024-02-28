// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract ArrayManipulation {
    uint[] public array;

    function addItem(uint item) public {
        array.push(item);
    }

    function deleteItem(uint index) public {
        require(index < array.length, "Index out of bounds");
        for (uint i = index; i<array.length-1; i++){
            array[i] = array[i+1];
        }
        array.pop();
    }

    function getArray() public view returns (uint[] memory) {
        return array;
    }
}
