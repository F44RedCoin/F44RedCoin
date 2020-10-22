F44RedCoin Core
=============

Setup
---------------------
F44RedCoin Core is the original F44RedCoin client and it builds the backbone of the network. It downloads and, by default, stores the entire history of F44RedCoin transactions (which is currently more than 7 GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download F44RedCoin Core, visit [f44redcoin.org](https://f44redcoin.org).

Running
---------------------
The following are some helpful notes on how to run F44RedCoin on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/f44redcoin-qt` (GUI) or
- `bin/f44redcoind` (headless)

### Windows

Unpack the files into a directory, and then run f44redcoin-qt.exe.

### OS X

Drag F44RedCoin-Core to your applications folder, and then run F44RedCoin-Core.

### Need Help?

* See the documentation at the [F44RedCoin Wiki](https://f44redcoin.info/)
for help and more information.
* Ask for help on [#f44redcoin](http://webchat.freenode.net?channels=f44redcoin) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=f44redcoin).
* Ask for help on the [F44RedCoinTalk](https://f44redcointalk.io/) forums.

Building
---------------------
The following are developer notes on how to build F44RedCoin on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [OS X Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The F44RedCoin repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [F44RedCoinTalk](https://f44redcointalk.io/) forums.
* Discuss general F44RedCoin development on #f44redcoin-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=f44redcoin-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
