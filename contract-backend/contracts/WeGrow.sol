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
    } 

    uint public itemCount;
    mapping (uint => Item) public itemList;
    mapping (address => Grower) public growerList;



    //
    // Events - publicize actions to external listeners
    //

    // 
    // Modifiers
    // 

    modifier onlyGrower{require(growerList[msg.sender].account == msg.sender, "Grower is not registered"); _;}

    //
    // Constructor
    //

    //
    // General Functions
    //

    function addItem(string memory _name, uint _price)
        public
        onlyGrower()
    {
        itemList[itemCount] = Item({name: _name, location: growerList[msg.sender].location, owner: msg.sender, price: _price, forSale: true});

    }

    function addGrower(string memory _name, string memory _location)
        public
    {
        growerList[msg.sender] = Grower({name: _name, location: _location, account: msg.sender});
    }

    //
    // View Functions
    //

    function listAllOffers()
        public
        view
        
        // these are the properties of "Item" type that need to be returned
        // string name;
        // string location;
        // address owner;
        // uint price;
        // bool forSale;
        returns(string memory, string memory, address, uint, bool)
    {
        return(itemList[index].name, itemList[index].location, itemList[index].owner, itemList[index].price, itemList[index].forSale);
    }
     

}