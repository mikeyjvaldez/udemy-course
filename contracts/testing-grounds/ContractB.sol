// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ContractB {
    function getBalance() public view returns(uint) {
       return address(this).balance;
    }

    function deposit() public payable {

    }
    
    function withdrawAll(address payable to) public {
        to.transfer(address(this).balance);
    }

}