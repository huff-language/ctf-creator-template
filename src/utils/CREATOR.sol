// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// ******* This is for use by the challenge creator only!     *******
// ******* Players do not need to change anything here. *******
library CREATOR {

    uint8 constant internal _challengeId = 0xff; // IMPORTANT: CREATOR TO UPDATE THIS!

    // IMPORTANT: CREATOR TO UPDATE THIS!
    // This function returns true or false if the solution is correct.
    // Write logic that will check if the provided solution is correct
    function verify(address solution) public returns (bool) {
        // add logic to verify solution
        return false;
    }

    // IMPORTANT: CREATOR TO UPDATE THIS!
    // his function should return the number that should reported for gas for the solution.
    // It could be the measurement of a single function call or multiple.
    function gasReport(address solution)  public returns (uint256 gasUsed) {
        // add logic to report gas cost of the relevant call or calls to the solution

        // Example:
        // uint start = gasleft();
        // solution.call(abi.encodeWithSignature("function1()"));
        // solution.call(abi.encodeWithSignature("function2()"));
        // gasUsed = start - gasleft();

        revert("IMPORTANT: CREATOR to update gasReport()");

    }

    function challengeId() public pure returns (uint8) {
        require(_challengeId != 0xff, "IMPORTANT: CREATOR to update challengeId!");
        return _challengeId;
    }
}