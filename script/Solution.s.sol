// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import "../src/Utils.sol";

string constant SOLVER_HANDLE = ""; // IMPORTANT: PLAYER TO UPDATE THIS!

contract Deploy is Script, Utils {

    IRegistry public constant REGISTRY = IRegistry(0xf6aE79c0674df852104D214E16AC9c065DAE5896); // registry deployed on Optimism mainnet

    function setUp() public {}

    function run() public {
        vm.broadcast();
        require(keccak256(abi.encode(SOLVER_HANDLE)) != keccak256(abi.encode("")), "IMPORTANT: PLAYER to update solverHandle!");
        REGISTRY.register({
            ctfId: Utils.ctfId(),
            solverHandle: SOLVER_HANDLE,
            codeHash: codeHash(),
            gas: Utils.gasReport()
        });
    }
}

interface IRegistry {
    function register(uint8 ctfId, string calldata solverHandle, bytes32 codeHash, uint256 gas) external;
}
