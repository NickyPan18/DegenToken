// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {
    
    mapping(uint256 => uint256) private itemCost;

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {
        itemCost[1] = 50;
        itemCost[2] = 1;  
        itemCost[3] = 100; 
        itemCost[4] = 75;  
    }

    function mintDegen(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function getDegenBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }

    function transferTokensTo(address _receiver, uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _transfer(msg.sender, _receiver, amount);
    }

    function burnToken(uint256 amount)external {
         require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender,amount);
    }

     function viewGameStore() public pure returns (string[] memory) {
        string[] memory storeItems = new string[](4);
        storeItems[0] = "1. HEART OF COURAGE = 50";
        storeItems[1] = " 2. TeM fLaKeS = 1";
        storeItems[2] = " 3. BLADE OF THE LIGHT MOON = 100";
        storeItems[3] = " 4. FLACO'S VOLCANIC REVOLVER = 75";
        return storeItems;
    }

    function redeemTokens(uint256 choice) external payable {
        require(choice >= 1 && choice <= 4, "Invalid selection");

        uint256 amountToRedeem = itemCost[choice];
        require(amountToRedeem > 0, "Invalid choice");

        require(balanceOf(msg.sender) >= amountToRedeem, "Insufficient balance");
        
        _transfer(msg.sender, owner(), amountToRedeem);
    }

}