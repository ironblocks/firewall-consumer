// SPDX-License-Identifier: UNLICENSED
// See LICENSE file for full license text.
// Copyright (c) Ironblocks 2024
pragma solidity ^0.8;

interface IFirewall {
    function preExecution(address sender, bytes memory data, uint value) external;
    function postExecution(address sender, bytes memory data, uint value) external;
    function preExecutionPrivateInvariants(address sender, bytes memory data, uint value) external returns (bytes32[] calldata);
    function postExecutionPrivateInvariants(
        address sender,
        bytes memory data,
        uint value,
        bytes32[] calldata preValues,
        bytes32[] calldata postValues
    ) external;
}
