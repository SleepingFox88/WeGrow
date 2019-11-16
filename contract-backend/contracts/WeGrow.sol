pragma solidity >=0.4.21 <0.6.0;

contract WeGrow {

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


}
    //
    // State variables
    //

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