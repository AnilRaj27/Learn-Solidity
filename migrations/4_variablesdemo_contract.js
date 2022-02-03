var MyContractVariables = artifacts.require("./MyContractVariables.sol")

module.exports = function (deployer) {
    deployer.deploy(MyContractVariables);
}