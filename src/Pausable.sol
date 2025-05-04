// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import { Ownale } from "./Ownable.sol";

abstract contract Pausable is Ownable {
        bool public paused;

    modifier whenNotPaused() {
        if (paused == true) {
            revert("PAUSED");
        }

        _;
    }

    function pause() public onlyOwner {
        paused = true;
    }

    function unpause() public onlyOwner {
        paused = false;
    }

    construtor(bool _paused) {
        paused = _paused;
    }
}
