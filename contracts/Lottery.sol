// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

contract Lottery {
    address public manager;
    address[] public players;
    
    constructor() public {
        manager = msg.sender;
    }
    
    function enter() public payable {
        require(msg.value > 0.01 ether, "Not enough Ether provided.");
        players.push(msg.sender);
    }
    
    function random() public view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.timestamp)));
    }
    
    function pickWinner() public restricted {
        uint index = random() % players.length;
        // players[index].transfer(this.balance); //older solution
        payable(players[index]).transfer(address(this).balance);
        players = new address[](0);
    }
    
    modifier restricted() {
        require(msg.sender == manager);
        _;
    }
    
    function getPlayers() public view returns(address[] memory) {
        return players;
    }
    
    
}