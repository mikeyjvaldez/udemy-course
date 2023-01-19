// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Send {
    receive() external payable {}

    function withdrawTransfer(address payable to) public {
        to.transfer(10);
    }

    function withdrawSend(address payable to) public {
        bool isSent = to.send(10);

        require(isSent, "Send was unsuccessful");
    }
}

contract ReceiverNoAction {
    function balance() public view returns(uint) {
        return address(this).balance;
    }
    receive() external payable {}
}

contract ReceiverAction {
    uint public balanceReceived;

    function balance() public view returns(uint) {
        return address(this).balance;
    }

    receive() external payable {
        balanceReceived += msg.value;
    }
}
