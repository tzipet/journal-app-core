pragma solidity ^0.4.24;

contract Papers {
  
  struct Paper {

  	uint id;
  	string headline;
  	string title;
  	string imageUrl;
  	address author;
  	string description;
    address[] buyers;

  }

  mapping (uint => Paper) public papers;
  uint paperCounter;

  mapping(address => string) public authorNames;

  function registerUser(string name) {
  	authorNames[msg.sender] = name;
  }

  function createPaper(string headline, string title, string imageUrl, string description) {
  	paperCounter++
    Paper memory paper = Paper(paperCounter, headline, title, imageUrl, msg.sender, description);
    papers[id] = paper
  }


  function countPapers() public returns (uint) {
    return paperCounter;
  }


  function buyPaper() public payable{


  }

}


