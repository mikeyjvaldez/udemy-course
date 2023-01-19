// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;
import "./ContractB.sol";

contract ContractA {
    ContractB public contractB;
    constructor() {
        contractB = new ContractB();
    }

    function deposit() public payable {
        // lets say contractB is an address value, you call it like. this
        // bytes memory payload = abi.encodeWithSignature("deposit()");
        //(bool success,  ) = contractB.call{value: address(this).balance, gas: 10000}(payload);
        // require(success, "call succeeded")

        contractB.deposit{value: address(this).balance, gas: 10000}();
    }

    function getBalance() public view returns(uint) {
        return contractB.getBalance();
    }

    function withdrawFromDex() public {
        contractB.withdrawAll(payable(msg.sender));
    }
}