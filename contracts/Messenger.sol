// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Messenger {
    address creatorAddress;
    uint256 public updated;
    string public message;

    constructor(address _creatorAddress) {
        creatorAddress = _creatorAddress;
    }

    function updateMessage(string memory updatedMessage) public {
        if (msg.sender == creatorAddress) {
            message = updatedMessage;
            updated++;
        }
    }
}
