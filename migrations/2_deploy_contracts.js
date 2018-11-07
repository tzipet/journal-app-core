var Papers = artifacts.require("./Papers.sol");

module.exports = function(deployer) {
  deployer.deploy(Papers).then(contract => {
  	contract.createPaper(1, 'Sample Headline 1', 'Sample Title', 'Sample URL', 'Sample Description')
    contract.createPaper(2, 'Sample Headline 2', 'Sample Title', 'Sample URL', 'Sample Description')
    contract.createPaper(3, 'Sample Headline 3', 'Sample Title', 'Sample URL', 'Sample Description')
    contract.createPaper(4, 'Sample Headline 4', 'Sample Title', 'Sample URL', 'Sample Description')
    contract.createPaper(5, 'Sample Headline 5', 'Sample Title', 'Sample URL', 'Sample Description')
  }) ;
};
