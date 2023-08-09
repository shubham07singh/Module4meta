//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface IERC20 {
    function totalsupply() external view returns (uint256); 
    function balanceof(address account) external view returns (uint256);
    function mint(address to,uint256 amount) external;
    function burn(uint256 amount) external;
    function transfer (address recipient , uint256 amount) external returns (bool);
    function addItem(string memory itemName, uint256 price , string memory desc) external;
    function redeemItem(uint256 Item) external payable;
    function getItemDetails(uint256 item) external view returns (string memory , uint256);
    function owner() external view returns (address);
}

contract DegenToken is IERC20 {
    string public name ;
    string public symbol;
    uint256 private _totalsupply;
    mapping(address => uint256) private _balances;
    mapping(uint256 => iteminfo) private _items;
    address private _owner;
    event itemredeemed(address indexed player , uint256 Item);
    uint public itemCount =0;
    struct iteminfo{
        uint itemId;
        string name;
        uint price;
        string desc;

    }
    constructor() {
       name = "Degen";
       symbol = "DGN";
       _totalsupply = 0;
       _owner = msg.sender;

       addItem("DLQ" , 100 , "A Sniper");
       addItem("Roll" , 200 , "A Shotgun");
       addItem("KRM" , 100 , "A Smg");

    }
    modifier onlyOwner(){
        require(msg.sender == _owner , "Only the owner can call the function");
        _;
    }
    function totalsupply() external view returns (uint256){
        return _totalsupply;
    }
    function balanceof(address account) external view returns (uint256){
        return _balances[account];

    }
    function mint(address to,uint256 amount) external onlyOwner {
        require (amount > 0 , "Amount must be greater than zero");
        _totalsupply +=amount;
        _balances[to] +=amount;

    }
    function burn (uint256 amount) external {
        require(amount > 0 , "Amount must be greater than zero");
        require(_balances[msg.sender] >= amount , "The balance is insufficient");
       _totalsupply -=amount;
       _balances[msg.sender]-=amount;
        
    }
    function transfer (address recipient , uint256 amount) external returns (bool){
         require(amount > 0 , "Amount must be greater than zero");
        require(_balances[msg.sender] >= amount , "The balance is insufficient");
        _balances[msg.sender] -= amount ;
        _balances[recipient] += amount;
        return true;
    }
      function addItem(string memory itemName, uint256 price , string memory desc) public{
          itemCount++;
          _items[itemCount]= iteminfo(itemCount,itemName , price ,desc);
      }
      function redeemItem(uint256 Item) external payable{
          require(bytes(_items[Item].name).length > 0 , "Item does not exist");
          require(_balances[msg.sender] >= _items[Item].price , "Insufficient balance");
          _balances[msg.sender] -= _items[Item].price;
          emit itemredeemed(msg.sender , Item);
      }
       function getItemDetails(uint256 item) external view returns (string memory , uint256){
           return (_items[item].name , _items[item].price);
       }
       function getItems() external view returns (iteminfo[] memory){
          iteminfo[] memory allitems = new iteminfo[](itemCount);

          for(uint i=1; i<= itemCount; i++){
              allitems[i-1]= _items[i];
          }
          return allitems;
       }
     function owner() external view returns (address){
         return _owner;
     }
}
