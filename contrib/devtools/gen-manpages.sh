#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

F44REDCOIND=${F44REDCOIND:-$SRCDIR/f44redcoind}
F44REDCOINCLI=${F44REDCOINCLI:-$SRCDIR/f44redcoin-cli}
F44REDCOINTX=${F44REDCOINTX:-$SRCDIR/f44redcoin-tx}
F44REDCOINQT=${F44REDCOINQT:-$SRCDIR/qt/f44redcoin-qt}

[ ! -x $F44REDCOIND ] && echo "$F44REDCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
F44RVER=($($F44REDCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for bitcoind if --version-string is not set,
# but has different outcomes for bitcoin-qt and bitcoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$F44REDCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $F44REDCOIND $F44REDCOINCLI $F44REDCOINTX $F44REDCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${F44RVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${F44RVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
