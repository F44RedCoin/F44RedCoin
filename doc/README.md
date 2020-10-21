F44RedCoin Core
=============

Setup
---------------------
F44RedCoin Core is the original F44RedCoin client and it builds the backbone of the network. It downloads and, by default, stores the entire history of F44RedCoin transactions, which requires a few hundred gigabytes of disk space. Depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download F44RedCoin Core, visit [f44redcoincore.org](https://f44redcoincore.org/en/download/).

Running
---------------------
The following are some helpful notes on how to run F44RedCoin Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/f44redcoin-qt` (GUI) or
- `bin/f44redcoind` (headless)

### Windows

Unpack the files into a directory, and then run f44redcoin-qt.exe.

### macOS

Drag F44RedCoin Core to your applications folder, and then run F44RedCoin Core.

### Need Help?

* See the documentation at the [F44RedCoin Wiki](https://en.f44redcoin.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#f44redcoin](https://webchat.freenode.net/#f44redcoin) on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#f44redcoin).
* Ask for help on the [F44RedCoinTalk](https://f44redcointalk.org/) forums, in the [Technical Support board](https://f44redcointalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build F44RedCoin Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [FreeBSD Build Notes](build-freebsd.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide (External Link)](https://github.com/f44redcoin-core/docs/blob/master/gitian-building.md)

Development
---------------------
The F44RedCoin repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Productivity Notes](productivity.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://doxygen.f44redcoincore.org/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [JSON-RPC Interface](JSON-RPC-interface.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [F44RedCoinTalk](https://f44redcointalk.org/) forums, in the [Development & Technical Discussion board](https://f44redcointalk.org/index.php?board=6.0).
* Discuss project-specific development on #f44redcoin-core-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#f44redcoin-core-dev).
* Discuss general F44RedCoin development on #f44redcoin-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#f44redcoin-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [f44redcoin.conf Configuration File](f44redcoin-conf.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Memory](reduce-memory.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)
- [PSBT support](psbt.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
