// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract Counter {
    uint public count;

    function inc() external {
        count++;
    }

    function dec() external {
        count--;
    }
}



interface ICounter {
    function count() external view returns(uint);
    function inc() external;
}

contract CallInterface {
    function count(ICounter _counter) external view returns(uint _count) {
        _count = _counter.count();
    }
    function inc(ICounter _counter) external {
        _counter.inc();
    }
//  function inc(address _counter) external {
//      ICounter(_counter).inc();
//  }
}