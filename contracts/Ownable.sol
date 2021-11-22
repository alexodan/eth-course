//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Ownable {
    // address tiene balance, metodos, etc..
    address public owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    modifier onlyOwner() {
        // Global variable available in a contract
        // - msg => message
        //   - UserA -> Ownable -> SomeContract -> LastContract
        //   - UserA calls Ownable then msg.sender (for Ownable) is UserA
        //   - Ownable calls SomeContract msg.sender (for SomeContract) is Ownable
        //   - SomeContract calls LastContract msg.sender (for LastContract) is SomeContract
        // - block => block
        //   - 
        // - tx => transaction
        //   - tx.origin => always will be UserA in the prev example.

        // Fail early and loudly
        require(msg.sender == owner, "No es el owner");
        _;
    }

    function someFn() public {
        // require(block.timestamp < (someDate + 10 weeks));
        // owner.transfer(1 ether);
        // block.coinbase => address del minero
        // block.coinbase.balance => uint
    }

    constructor(address _owner) {
        owner = _owner;
    }

    function getOwner() public view returns (address) {
        return owner;
    }

    function transferOwnership(address newOwner) onlyOwner public {
        address previousOwner = owner;
        owner = newOwner;
        emit OwnershipTransferred(previousOwner, newOwner);
    }
}
