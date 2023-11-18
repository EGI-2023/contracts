// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
// import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract CARBON is ERC20, Ownable {
    constructor()
        ERC20("CARBON", "RCRBN")
        Ownable(msg.sender)
        // ERC20Permit("CARBON")
    {}

    function burn (address _toBurn, uint256 _value) public onlyOwner {
        _burn(_toBurn, _value);
    }

    function mint(address to, uint256 amount) public {
        // require(msg.sender == 0xD0daae2231E9CB96b94C8512223533293C3693Bf, "no access to mint");
        _mint(to, amount);
    }
}
