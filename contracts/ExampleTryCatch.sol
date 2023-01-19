// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract WillThrow {
    error NotAllowed(string);
    function aFunction() public pure {
        // require(false, "Will throw message");
        // assert(false);
        revert NotAllowed("not allowed");
        // web3.utils.toAscii("0x^^value")
    }
}

contract ErrorHandling {
    event ErrorLogging(string reason);
    event ErrorLogCode(uint code);
    event ErrorLogBytes(bytes lowLevelData);
    function catchTheError() public {
        WillThrow will = new WillThrow();
        try will.aFunction() {
            // add code here if it works
        } catch Error(string memory reason) {
            emit ErrorLogging(reason);
        } catch Panic(uint errorCode) {
            emit ErrorLogCode(errorCode);
        } catch(bytes memory lowLevelData) {
            emit ErrorLogBytes(lowLevelData);
        }
    }

}