pragma solidity ^0.4.24;

contract Papers {
  
  struct Paper {

  	uint id;
  	string headline;
  	string title;
  	string imageUrl;
  	address author;
  	string description;
    uint price;
    address[] buyers;

  }

  mapping (uint => Paper) public papers;
  uint paperCounter;

  mapping(address => string) public authorNames;

  function registerUser(string name) {
  	authorNames[msg.sender] = name;
  }

  function createPaper(string headline, string title, string imageUrl, string description, uint price) {
  	paperCounter++
    Paper memory paper = Paper(paperCounter, headline, title, imageUrl, msg.sender, description, price);
    papers[id] = paper
  }


  function countPapers() public returns (uint) {
    return paperCounter;
  }


  function buyPaper(uint id) public payable{

    Paper storage paper = papers[id];

    require(paper.price == msg.value);
    require(paper.author != msg.sender);
    require(!isBuyer(paper.id));

    paper.author.tranfer(msg.value);

    paper.buyers.push(msg.sender);



  }

  function isBuyer(uint id) public returns (bool) {
    Paper storage paper = papers[id];
    for(uint i=0; i < paper.buyers.length; i++) {
      if (msg.sender == paper.buyers[i]) {
        return true;
      } 
    }
    return false;
  }
}


