// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {Fallback} from "../src/Fallback.sol";

contract DeployFallback is Script {
    function run() public {
        vm.startBroadcast();
        Fallback fallbackContract = new Fallback();
        vm.stopBroadcast();
    }
}
