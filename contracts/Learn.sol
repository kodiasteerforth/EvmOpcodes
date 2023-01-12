// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.7; 

contract codeDaily {
    uint engineer;
    address admin;
    address private owner;
    event Log(string message);
    

constructor() {
    admin = msg.sender;
}

function restrictedCaller() external view {
    require(msg.sender == admin, "caller must be admin");
}

//Global variables
function pay() public payable {
    // payer = msg.sender;
    // origin = tx.origin;
    // amount = msg.value;
}

function getBlockInfo() public view returns (uint, uint, uint) {
    return(
        block.number,
        block.timestamp,
        block.chainid
    );
}

// Payable function in solidity
function buyProperty() external payable {
    require(msg.value == 99 ether, "amount must be 99 ether");
}

receive() external payable {
    require(msg.value <= 99 ether, "amount must be 99 ether");
}

// Error Handling in Solidity
function example1(uint _value) public { 
    require(_value > 10, "value must be greater than 10");
    emit Log("success");
    }

function example2(uint _value) public {
    if(_value <= 10) {
        revert ("value must be greater than 10");
    }
    emit Log("success");
}

// Conditionals in Solidity
function evenOrOdd(uint x) public pure returns (string memory) {
    if(x % 2 == 0) {
        return "even";
    } else {
        return "odd";
    }
}

function evenOrOdd1(uint x) public pure returns (string memory) {
    if(x % 2 == 0) {
        return "even";
    }
    return "odd";
}

function evenOrOdd2(uint x) public pure returns (string memory) {
    return x % 2 == 0 ? "even" : "odd";
}


}