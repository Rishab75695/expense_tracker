import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTranscations extends StatefulWidget {
  const UserTranscations({Key? key}) : super(key: key);

  @override
  _UserTranscationsState createState() => _UserTranscationsState();
}

class _UserTranscationsState extends State<UserTranscations> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: '1',
      title: 'New Gpu',
      amount: 420.69,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'New Processor',
      amount: 400.00,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());
      setState(() {
        _userTransactions.add(newTx);
      });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
