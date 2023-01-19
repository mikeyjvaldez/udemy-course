// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Wallet {

    PaymentReceived public payment;

    function payContract() public payable {
        payment = new PaymentReceived(msg.sender, msg.value);
    }

}

contract PaymentReceived {
    address public from;
    uint public amount;

    constructor(address _from, uint _amount) {
        from = _from;
        amount = _amount;
    }
}

contract WalletEnhanced {

    struct PaymentReceivedStruct {
        address from;
        uint amount;
    }

    PaymentReceivedStruct public payment;

    function payContract() public payable {
        payment = PaymentReceivedStruct(msg.sender, msg.value);
    }
}