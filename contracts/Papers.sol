pragma solidity ^0.5.0;

contract Papers {
  struct Paper {
    uint id;
    string headline;
    string title;
    string imageUrl;
    address payable author;
    string description;
    uint price;
    address[] buyers;
  }

  mapping(uint => string) private paperURLs;

  mapping (uint => Paper) public papers;
  uint paperCounter;

  mapping(address => string) public authorNames;

  function registerUser(string memory name) public {
    authorNames[msg.sender] = name;
  }

  function createPaper(string memory headline, string memory title, string memory imageUrl, string memory description, uint price, string memory url) public {
    paperCounter++;
    address[] memory buyers;
    Paper memory paper = Paper(paperCounter, headline, title, imageUrl, msg.sender, description, price, buyers);
    papers[paperCounter] = paper;
    paperURLs[paperCounter] = url;
  }

  function getPaperURL(uint id) public returns (string memory) {
    require(!isBuyer(id));
    return paperURLs[id];
  }

  function countPapers() public returns (uint) {
    return paperCounter;
  }

  function buyPaper(uint id) public payable{

    Paper storage paper = papers[id];

    require(paper.price == msg.value);
    require(paper.author != msg.sender);
    require(!isBuyer(paper.id));

    paper.author.transfer(msg.value);

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


