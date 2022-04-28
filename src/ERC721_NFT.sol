// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.4;

import {ERC721} from "@NFT/ERC721.sol";

contract ERC721_NFT is ERC721 {
    uint256 constant MAX_SUPPLY = 10000;

    constructor() ERC721(MAX_SUPPLY) {}

    function mint(address to, uint256 amount) external payable {
        _mint(to, amount);
    }

    function safeMint(address to, uint256 amount) external payable {
        _safeMint(to, amount);
    }

    function burn(uint256 tokenId) external {
        _burn(tokenId);
    }
}
