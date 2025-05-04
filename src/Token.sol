// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

<<<<<<< Updated upstream
contract Token {
    string private _name = "Bootcamp";
    string private _symbol = "OCG";
    uint8 private _decimals = 18;

    mapping (address => uint256) balance;

    // | address | uint256 |
    // | lucas   | 99      |
    // | tarcio  | 190     |
    // | thales  | 900     |

    mapping (address => mapping(address => uint256)) _allowance;

    // | address | address | uint256 |
    // | lucas   | tarcio  | 30      |
    // | lucas   | juciley | 10      |

    function name()view public returns(string memory) {
        return _name;
    }

    function symbol() view public returns(string memory) {
        return _symbol;
    }

    function decimals() view public returns(uint8) {
        return _decimals;
=======
import {Ownale} from "./Ownable.sol";
import {Pausable} from "./Pausable.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";

contract Token is Ownable, Pausable, ReentrancyGuard {
    string public name;        
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals)
    Pausable(false) Ownable(msg.sender) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
    }
    
    function transfer(
        address _to,
        uint256 _value
    ) public whenNotPaused returns (bool success) {
        require(balanceOf[msg.sender] >= _value);

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        return true;
    }

    function mint() pulic noReentrant {
        uint256 amount = 1000 * 1e18;

        balanceOf[msg.sender] += amount;
        totalSupply += amount;
    }

    function burn(address user, uint256 amount) public onlyOwner {
        balanceOf[user] -= amount;
>>>>>>> Stashed changes
    }

    function balanceOf(address _user) view public returns(uint256) {
        return balance(_user);
    }

    function transfer(address to, uint256 amount) public {
        balance[msg.sender] -= amount;

        balance[to] += amount;
    }

    function approve(address spender, uint256 amount) public {
        _allowance[msg.sender][spender] = amount;
    }


    function transferFrom(address from, address to, uint256 amount) public {

        // validar se o msg.sender tem allowance suficiente (amount) do 'from'
        if (_allowance[from][msg.sender] < amount) {
            revert("vc não tem allowance suficiente");
        }

        balance[from] -= amount;
        balance[to] += amount;
    }

    function allowance(address owner, address spender) public return (uint256) {
        return _allowance[owner][spender];
    }

    function withdraw() public noReentrant {
        uint256 amount = balanceOf[msg.sender];

        address(msg.sender).call(value: amount)("");

        balanceOf(msg.sender) -= amount;
    }
}

contract Attack {

    function att() public{
        Token.withdraw();
    }

    fallback() external {
        uint256 balance1 = Token.balanceOf(address(this));
        uint256 balance2 = Token.balanceOf(address(Token));

        if (balance2 && balance2) {
            Token.withdraw();
        } else {
            return;
        }
        
    }
}