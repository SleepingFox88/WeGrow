pragma solidity ^0.5.0;

contract WeGrow {

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
    mapping (uint => Item) itemList;
    mapping (address => Grower) growerList;

    // 
    // Modifiers
    // 

    modifier onlyGrower{require(growerList[msg.sender].account == msg.sender, "Grower is not registered"); _;}

    //
    // General Functions
    //

    function offerItem(string memory _name, uint _price)
        public
        onlyGrower()
    {
        itemList[itemCount] = Item({name: _name, location: growerList[msg.sender].location, owner: msg.sender, price: _price, forSale: true});
        itemCount += 1;
    }

    function registerAsGrower(string memory _name, string memory _location)
        public
    {
        growerList[msg.sender] = Grower({name: _name, location: _location, account: msg.sender});
    }

    //
    // View Functions
    //

    function viewItem(uint index)
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

    function listMyItemIDs()
        public
        view
        returns(uint[] memory)
    {

        // get number of owned items
        uint numOfOwned = 0;
        for(uint i = 0; i < itemCount; i++){
            if(itemList[i].owner == msg.sender){
                numOfOwned++;
            }
        }

        //declare an array of type "uint" the size of "numOfOwned"
        uint[] memory listOfMyItems = new uint[](numOfOwned);

        uint count = 0;
        for(uint i = 0; i < itemCount; i++){
            if(itemList[i].owner == msg.sender){
                listOfMyItems[count] = i;
                count++;
            }
        }
        return listOfMyItems;
    }
}