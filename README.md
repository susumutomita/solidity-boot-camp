## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ make build
```

### Test

```shell
make test
```

### Format

```shell
make fmt
```

### Gas Snapshots

```shell
make gas_snapshot
```

### Anvil

```shell
anvil or make start_local_node
```

### Deploy

```shell
forge script script/ArrayManipulation.s.sol --rpc-url <your_rpc_url> --private-key <your_private_key>

```

#### Example to deploy a contract to local node

```shell
forge script script/ArrayManipulation.s.sol --rpc-url http://127.0.0.1:8545 --private-key <your_private_key>
```

### Cast

```shell
cast <subcommand>
```

### Help

```shell
forge --help
anvil --help
cast --help
```
