// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.8.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.8.0/token/ERC20/extensions/ERC20Snapshot.sol";
import "@openzeppelin/contracts@4.8.0/access/Ownable.sol";

/// @custom:security-contact onchainengineer@gmail.com
contract VHEALIOS is ERC20, ERC20Snapshot, Ownable {
    constructor() ERC20("vHEALIOS", "vHEALIOS") {
        _mint(msg.sender, 299792458);
    }

    function snapshot() public onlyOwner {
        _snapshot();
    }

    // The following functions are overrides required by Solidity.

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        override(ERC20, ERC20Snapshot)
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}
