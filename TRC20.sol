// SPDX-License-Identifier: GPL3.0

pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.2.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.2.0/access/Ownable.sol";
import "@openzeppelin/contracts@4.2.0/token/ERC20/extensions/ERC20Burnable.sol";


contract NEWUHKD is ERC20,Ownable,ERC20Burnable {

    uint256 private constant MAX_SUPPLY = 80000000000 * 10 ** 18; // TRON uses 18 decimal places 

    constructor() ERC20("NEWUHKD", "NUHKD") {
        _mint(msg.sender, 10000000000 * 10 ** 18); // TRON uses 18 decimal places
    }

    function mintNUHKD(address account, uint256 amount) public onlyOwner {
        require(totalSupply() + amount <= MAX_SUPPLY, "Minting would exceed the maximum supply");
        _mint(account, amount);
    }

}