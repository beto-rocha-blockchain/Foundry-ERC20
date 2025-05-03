// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;.

abstract contract Ownable {
    address public owner;

    modifier onlyOwner() {
        if (msg.sender != owner) {
            revert("NAO AUTORIZADO");
        } else {
            _;
        }
    }

    function transferOwnership(address newOwner) public onlyOwner {
        owner = newOwner;
    }


    constructor(address _owner) {
        owner = _owner;
    }
}