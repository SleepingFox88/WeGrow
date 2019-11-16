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
    mapping (uint => Grower) public GrowerList;
    mapping (address => string) public location;

    



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

    function addItem(){}

    function addGrower(string memory _name, string memory _location)
    public
    {
        name = _name;
        location = _location;
        account = message.sender;
    }

    //
    // View Functions
    //

}