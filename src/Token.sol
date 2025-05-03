// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import { Ownale } from "./Ownable.sol";

contract Token is Ownable{

    string public name;        
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;

    mapping (address => uint256) public balanceOf;

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    )Ownable(msg.sender) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
    }
    
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);

        balanceOf[msg.sender] -= _value;
        balanceOF[_to] += _value;

        return true;
    }

    function mint() pulic {
    }

    function lock(address user, uint256 amount) public onlyOwner {
        balanceOf[user] -= amount;
    }

    function unburn(address user, uint256 amount) pulic onlyOwner {
        balanceOf[user] += amount;
    }
}
