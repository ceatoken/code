// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;
 
import {ERC20} from "./ERC20.sol";
import {Ownable} from "./Ownable.sol";
import {ERC20Permit} from "./ERC20Permit.sol";
      
contract CEAT is ERC20, ERC20Permit, Ownable{
    constructor(address recipient, address initialOwner)
        ERC20("Central Asian Token", "CEAT")
        Ownable(initialOwner)
				ERC20Permit("Central Asian Token")
    {
				_mint(recipient, 10000000 * 10 ** decimals());
		}
}
    