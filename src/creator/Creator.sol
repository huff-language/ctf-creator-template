pragma solidity 0.8.19;

// ******* This is for use by the CTF creator only!     *******
// ******* Players do not need to change anything here. *******
library Creator {

    uint8 constant internal _ctfId = 0xf1; // IMPORTANT: CREATOR TO UPDATE THIS!

    // IMPORTANT: CREATOR TO UPDATE THIS!
    function verify(address solution)  public returns (bool) {
        // add logic to verify solution
        return false;
    }

    // IMPORTANT: CREATOR TO UPDATE THIS!
    function gasReport(address solution)  public returns (uint256 gasUsed) {
        // add logic to report gas cost of the relevant call or calls to the solution

        // Example:
        // uint start = gasleft();
        // solution.call(abi.encodeWithSignature("function1()"));
        // solution.call(abi.encodeWithSignature("function2()"));
        // gasUsed = gasleft();

    }

    // Utility functions

    function ctfId() public pure returns (uint8) {
        require(_ctfId != 0xff, "IMPORTANT: CREATOR to update ctfId!");
        return _ctfId;
    }
}