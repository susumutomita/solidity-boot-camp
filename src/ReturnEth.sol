// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

contract ReturnEth {
    function returnEthAmount() public payable returns (uint256) {
        assembly {
            let amount := callvalue() // トランザクションで送られたETHの量を取得
            mstore(0x0, amount) // メモリの0x0位置にamountを格納
            return(0x0, 0x20) // メモリから0x20バイトを返す
        }
    }
}
