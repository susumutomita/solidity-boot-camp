// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract ArrayManipulation {
    uint256[] public array;

    function addItem(uint256 item) public {
        array.push(item);
    }

    function deleteItem(uint256 index) public {
        require(index < array.length, "Index out of bounds");
        for (uint256 i = index; i < array.length - 1; i++) {
            array[i] = array[i + 1];
        }
        array.pop();
    }

    function getArray() public view returns (uint256[] memory) {
        return array;
    }
}
