// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FileManager {
    // Event to log file actions
    event FileAction(
        address indexed user,
        string action, // "upload", "open", "delete"
        string fileName,
        uint256 timestamp
    );

    // Function to log file actions
    function logAction(string memory action, string memory fileName) public {
        emit FileAction(msg.sender, action, fileName, block.timestamp);
    }
}