var Papers = artifacts.require("./Papers.sol");

module.exports = function(deployer) {
  deployer.deploy(Papers).then(contract => {
  	contract.createPaper('Sample Headline 1', 'Sample Title', 'Sample URL', 'Sample Description', 1000)
    contract.createPaper('Sample Headline 2', 'Sample Title', 'Sample URL', 'Sample Description',1000)
    contract.createPaper('Sample Headline 3', 'Sample Title', 'Sample URL', 'Sample Description',1000)
    contract.createPaper('Sample Headline 4', 'Sample Title', 'Sample URL', 'Sample Description',1000)
    contract.createPaper('Sample Headline 5', 'Sample Title', 'Sample URL', 'Sample Description',1000)
  }) ;
};
