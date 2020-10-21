// Copyright (c) 2011-2014 The F44RedCoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef F44REDCOIN_QT_F44REDCOINADDRESSVALIDATOR_H
#define F44REDCOIN_QT_F44REDCOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class F44RedCoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit F44RedCoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** F44RedCoin address widget validator, checks for a valid f44redcoin address.
 */
class F44RedCoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit F44RedCoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // F44REDCOIN_QT_F44REDCOINADDRESSVALIDATOR_H
