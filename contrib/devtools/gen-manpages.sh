#!/usr/bin/env bash
# Copyright (c) 2016-2019 The F44RedCoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

F44REDCOIND=${F44REDCOIND:-$BINDIR/f44redcoind}
F44REDCOINCLI=${F44REDCOINCLI:-$BINDIR/f44redcoin-cli}
F44REDCOINTX=${F44REDCOINTX:-$BINDIR/f44redcoin-tx}
WALLET_TOOL=${WALLET_TOOL:-$BINDIR/f44redcoin-wallet}
F44REDCOINQT=${F44REDCOINQT:-$BINDIR/qt/f44redcoin-qt}

[ ! -x $F44REDCOIND ] && echo "$F44REDCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
read -r -a F44RVER <<< "$($F44REDCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }')"

# Create a footer file with copyright content.
# This gets autodetected fine for f44redcoind if --version-string is not set,
# but has different outcomes for f44redcoin-qt and f44redcoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$F44REDCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $F44REDCOIND $F44REDCOINCLI $F44REDCOINTX $WALLET_TOOL $F44REDCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${F44RVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${F44RVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
