// SPDX-License-Identifier: UNLICENSED
// See LICENSE file for full license text.
// Copyright (c) Ironblocks 2023
pragma solidity 0.8.19;

interface IFirewall {
    function preExecution(address sender, bytes memory data, uint value) external;
    function postExecution(address sender, bytes memory data, uint value) external;
}
