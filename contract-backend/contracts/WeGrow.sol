pragma solidity ^0.5.0;

import "./Ownable.sol";

contract WeGrow is Ownable {

    //
    // State variables
    //

    struct Grower { 
        string name;
        string location;
        address account;
    }

    struct Item {
        string name;
        string location;
        address owner;
        uint price;
        bool forSale;
        int itemCount;
    } 

    uint public itemCount;
    mapping (uint => Item) public itemList;
    mapping (address => string) public location;

    //
    // Events - publicize actions to external listeners
    //

    // 
    // Modifiers
    // 

    //
    // Constructor
    //

    //
    // General Functions
    //

    //
    // View Functions
    //

}