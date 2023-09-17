pragma solidity 0.8.19;

import {Creator} from "./creator/Creator.sol";
import "forge-std/Test.sol";

// huff-runner
import {compileWithVersion, create, EvmVersion} from "huff-runner/src/Deploy.sol";

using {compileWithVersion} for Vm;
using {create} for bytes;

contract Utils is Test {
    function verify() public returns (bool) {
        return Creator.verify(getTempHuffSolutionAddress());
    }

    function gasReport() public returns (uint256 gasUsed) {
        return Creator.gasReport(getTempHuffSolutionAddress());
    }

    // function codeHash() public pure returns (bytes32) {
    function codeHash() public returns (bytes32) {
        bytes memory bytecode = vm.compileWithVersion("src/player/Solution.huff", EvmVersion.Paris);
        console.logBytes(bytecode);
        return keccak256(bytecode);
    }

    function ctfId() public pure returns (uint8) {
        return Creator.ctfId();
    }

    function getTempHuffSolutionAddress() public returns (address) {
        return vm.compileWithVersion("src/player/Solution.huff", EvmVersion.Paris).create({value: 0});
    }
}
