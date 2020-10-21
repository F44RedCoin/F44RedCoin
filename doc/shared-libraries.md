Shared Libraries
================

## f44redcoinconsensus

The purpose of this library is to make the verification functionality that is critical to F44RedCoin's consensus available to other applications, e.g. to language bindings.

### API

The interface is defined in the C header `f44redcoinconsensus.h` located in `src/script/f44redcoinconsensus.h`.

#### Version

`f44redcoinconsensus_version` returns an `unsigned int` with the API version *(currently `1`)*.

#### Script Validation

`f44redcoinconsensus_verify_script` returns an `int` with the status of the verification. It will be `1` if the input script correctly spends the previous output `scriptPubKey`.

##### Parameters
- `const unsigned char *scriptPubKey` - The previous output script that encumbers spending.
- `unsigned int scriptPubKeyLen` - The number of bytes for the `scriptPubKey`.
- `const unsigned char *txTo` - The transaction with the input that is spending the previous output.
- `unsigned int txToLen` - The number of bytes for the `txTo`.
- `unsigned int nIn` - The index of the input in `txTo` that spends the `scriptPubKey`.
- `unsigned int flags` - The script validation flags *(see below)*.
- `f44redcoinconsensus_error* err` - Will have the error/success code for the operation *(see below)*.

##### Script Flags
- `f44redcoinconsensus_SCRIPT_FLAGS_VERIFY_NONE`
- `f44redcoinconsensus_SCRIPT_FLAGS_VERIFY_P2SH` - Evaluate P2SH ([BIP16](https://github.com/f44redcoin/bips/blob/master/bip-0016.mediawiki)) subscripts
- `f44redcoinconsensus_SCRIPT_FLAGS_VERIFY_DERSIG` - Enforce strict DER ([BIP66](https://github.com/f44redcoin/bips/blob/master/bip-0066.mediawiki)) compliance
- `f44redcoinconsensus_SCRIPT_FLAGS_VERIFY_NULLDUMMY` - Enforce NULLDUMMY ([BIP147](https://github.com/f44redcoin/bips/blob/master/bip-0147.mediawiki))
- `f44redcoinconsensus_SCRIPT_FLAGS_VERIFY_CHECKLOCKTIMEVERIFY` - Enable CHECKLOCKTIMEVERIFY ([BIP65](https://github.com/f44redcoin/bips/blob/master/bip-0065.mediawiki))
- `f44redcoinconsensus_SCRIPT_FLAGS_VERIFY_CHECKSEQUENCEVERIFY` - Enable CHECKSEQUENCEVERIFY ([BIP112](https://github.com/f44redcoin/bips/blob/master/bip-0112.mediawiki))
- `f44redcoinconsensus_SCRIPT_FLAGS_VERIFY_WITNESS` - Enable WITNESS ([BIP141](https://github.com/f44redcoin/bips/blob/master/bip-0141.mediawiki))

##### Errors
- `f44redcoinconsensus_ERR_OK` - No errors with input parameters *(see the return value of `f44redcoinconsensus_verify_script` for the verification status)*
- `f44redcoinconsensus_ERR_TX_INDEX` - An invalid index for `txTo`
- `f44redcoinconsensus_ERR_TX_SIZE_MISMATCH` - `txToLen` did not match with the size of `txTo`
- `f44redcoinconsensus_ERR_DESERIALIZE` - An error deserializing `txTo`
- `f44redcoinconsensus_ERR_AMOUNT_REQUIRED` - Input amount is required if WITNESS is used

### Example Implementations
- [NF44RedCoin](https://github.com/NicolasDorier/NF44RedCoin/blob/master/NF44RedCoin/Script.cs#L814) (.NET Bindings)
- [node-libf44redcoinconsensus](https://github.com/bitpay/node-libf44redcoinconsensus) (Node.js Bindings)
- [java-libf44redcoinconsensus](https://github.com/dexX7/java-libf44redcoinconsensus) (Java Bindings)
- [f44redcoinconsensus-php](https://github.com/Bit-Wasp/f44redcoinconsensus-php) (PHP Bindings)
