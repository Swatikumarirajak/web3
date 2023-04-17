//https://eth-sepolia.g.alchemy.com/v2/6TH_UimO73rCbSdSNdQunFxFaf7zyHLe

require('@nomiclabs/hardhat-waffle');

module.exports = {
  defaultNetwork: "sepolia",
  networks: {
    hardhat: {
    },
    sepolia: {
      url: "https://eth-sepolia.g.alchemy.com/v2/6TH_UimO73rCbSdSNdQunFxFaf7zyHLe",
      accounts: ["1a020069a02793add6d72713246a0d6a1132231466120a337bee7c3a06936c1d"]
    }
  },
  solidity: {
    version: "0.8.9",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
  paths: {
    sources: "./contracts",
    tests: "./test",
    cache: "./cache",
    artifacts: "./artifacts"
  },
  mocha: {
    timeout: 40000
  }
}