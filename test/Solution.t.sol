// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "forge-std/console.sol";

import {Utils} from "../src/Utils.sol";

contract SolutionTest is Test, Utils {

    function setUp() public {}

    function testSolution() public {
        require(verify(), "Solution failed");
    }
}
