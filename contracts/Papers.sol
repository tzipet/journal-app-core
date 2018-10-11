pragma solidity ^0.4.24;

contract Papers {
  
  struct Paper {

  	uint id;
  	string headline;
  	string title;
  	string imageUrl;
  	address author;
  	string description;
  }

  Paper[] public papers;

  mapping(address => string) authorNames;

  function registerUser(string name) {
  	authorNames[msg.sender] = name
  }

  function createPaper(uint id,  string headline, string title, string imageUrl, string abstract) {
  	authorName = authorNames[msg.sender];
  	paper = Paper(id, headline, title, imageUrl, msg.sender, authorName, description);
  	papers.push(paper);
  }

  function listPapers() {}
}


