// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Underflow {
    mapping (address => uint) balances;

    function contribute() public payable {
        balances[msg.sender] = msg.value;
    }

    function getBalance() view public returns (uint) {
        return balances[msg.sender];
    }

    function transfer(address _receiver, uint _value) public payable {
        require(balances[msg.sender] - _value >= 5);
        balances[msg.sender] = balances[msg.sender] - _value;
        balances[_receiver] = balances[_receiver] + _value;
    }
}
