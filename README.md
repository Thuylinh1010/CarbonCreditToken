# Carbon Credit Token

This project implements a basic carbon credit token on Ethereum-compatible blockchains using Solidity. Each token represents 1 ton of verified CO₂ offset.

## 🔗 Contract Structure

The smart contract allows:

- 🧾 Minting carbon credits with project metadata
- 🔥 Burning credits to offset emissions
- 🔍 Retrieving project info by ID

## 📁 Files

contracts/
└── CarbonCreditToken.sol # Main contract

## 🛠 Tools Used

- Remix IDE
- Solidity ^0.8.0
- MetaMask (Testnet/Mainnet)

## 🧪 How to Deploy

1. Open [Remix](https://remix.ethereum.org)
2. Paste contract into `CarbonCreditToken.sol`
3. Compile and deploy using MetaMask (Injected Web3)
4. Use `mint()` and `burn()` to interact

## 📄 License

MIT License
