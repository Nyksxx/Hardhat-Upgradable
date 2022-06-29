// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.7;

contract Box {
    uint256 internal value;

    event changeValue(uint256 newValue);

    function store(uint256 newValue) public {
        value = newValue;
        emit changeValue(newValue);
    }

    function retrieve() public view returns (uint256) {
        return value;
    }

    function version() public pure returns (uint256) {
        return 1;
    }
}
