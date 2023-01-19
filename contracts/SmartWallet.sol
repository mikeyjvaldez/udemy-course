// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract SmartWallet {
    function deposit() public payable {

    }
    function withdrawTo(address toAddress) public {
        payable(toAddress).transfer(address(this).balance);
    }

    function withdraw() public {
        payable(msg.sender).transfer(address(this).balance);
    }
}
