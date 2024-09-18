// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Test, console2} from "forge-std/Test.sol";
import {HorseStore} from "../../src/HorseStore.sol";

abstract contract Base_testV1 is Test {
    HorseStore public horseStore;

    function setUp() public virtual {
        horseStore = new HorseStore();
    }

    function testReadValue() public {
        uint256 initialValue = horseStore.readNumberOfHorses();
        assertEq(initialValue, 0);
    }

    function testWriteNumberOfHorses() public {
        uint256 numOfHorses = 10;
        horseStore.updateHorseNumber(numOfHorses);
        assertEq(horseStore.readNumberOfHorses(), numOfHorses);
    }
}