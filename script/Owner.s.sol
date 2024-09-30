// SPDX-License_Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {Owner} from "../src/Owner.sol";

contract deployOwner is Script {
    function run() external returns (Owner) {
        vm.startBroadcast();
        Owner owner = new Owner();
        vm.stopBroadcast();
        return owner;
    }
}
