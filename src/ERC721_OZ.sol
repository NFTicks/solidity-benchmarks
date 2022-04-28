// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.4;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ERC721_OZ is ERC721 {
    uint256 currentSupply;

    constructor() ERC721("Name", "Sy") {}

    function mint(address to, uint256 amount) external payable {
        uint256 startingIndex;
        unchecked {
            startingIndex = currentSupply + 1;
            currentSupply += amount;
        }

        for (uint256 i; i < amount; ) {
            _mint(to, startingIndex + i);
            unchecked {
                i++;
            }
        }
    }

    function safeMint(address to, uint256 amount) external payable {
        uint256 startingIndex;
        unchecked {
            startingIndex = currentSupply + 1;
            currentSupply += amount;
        }

        for (uint256 i; i < amount; ) {
            _safeMint(to, startingIndex + i);
            unchecked {
                i++;
            }
        }
    }
    
    function burn(uint256 tokenId) external {
        _burn(tokenId);
    }
}
