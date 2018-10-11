var Papers = artifacts.require("./Papers.sol");

module.exports = function(deployer) {
  deployer.deploy(Papers);
};
