// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Counter{
    uint public count;

    event Increment(uint value);
    event Decrement(uint value);

    function getCount() view public returns(uint){
        return count;
    }

    function increment() public {
        count=count+1;
        emit Increment(count);
    }

    function decrement() public {
        count=count-1;
        emit Decrement(count);
    }
}
