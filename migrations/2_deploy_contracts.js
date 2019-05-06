var Grading = artifacts.require("./grading.sol");

module.exports = function(deployer) {
  deployer.deploy(Grading);
};
