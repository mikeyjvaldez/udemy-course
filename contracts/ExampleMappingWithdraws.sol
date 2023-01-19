// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleMappingWithdraws {

    mapping(address => uint) public balances;
    
    function sendMoney() public payable {
        balances[msg.sender] += msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function getAccountBalance() private view returns(uint) {
        return balances[msg.sender];
    }

    function clearAccountBalance() private {
        balances[msg.sender] = 0;
    }

    function withdrawAllMoney(address payable to) public {
        uint balanceToSendOut = getAccountBalance();
        clearAccountBalance();
        to.transfer(balanceToSendOut);
    }
}