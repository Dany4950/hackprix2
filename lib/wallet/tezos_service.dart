import 'package:flutter/material.dart';
import 'tezos_service.dart';

class TezosPage extends StatefulWidget {
  @override
  _TezosPageState createState() => _TezosPageState();
}

class _TezosPageState extends State<TezosPage> {
// final TezosService tezosService = TezosService();

  String balance = '0';
  TextEditingController addressController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initializeWallet();
  }

  Future<void> _initializeWallet() async {
    try {
      // await tezosService.createWallet();
      await _updateBalance();
    } catch (e) {
      print('Error initializing wallet: $e');
    }
  }

  Future<void> _updateBalance() async {
    try {
      // final bal = await tezosService.getBalance();
      setState(() {
        // balance = (bal / 1000000).toString(); // Convert from microtez to tez
      });
    } catch (e) {
      print('Error fetching balance: $e');
    }
  }

  Future<void> _sendTezos() async {
    try {
      final toAddress = addressController.text;
      final amount =
          int.parse(amountController.text) * 1000000; // Convert tez to microtez
      // await tezosService.sendTransaction(toAddress, amount);
      await _updateBalance();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Transaction successful!')),
      );
    } catch (e) {
      print('Error sending Tezos: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error sending Tezos: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: Text(
          'Payments',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 10,
        shadowColor: Colors.deepPurpleAccent[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20)),
                height: 50,
                width: 200,
                child: Center(
                    child: Text(
                  'Wallet Balance: $balance ꜩ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ))),
            TextField(
              controller: addressController,
              decoration: InputDecoration(labelText: 'Recipient Address'),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: 'Amount (ꜩ)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _sendTezos,
              child: Text('Send Tezos'),
            ),
          ],
        ),
      ),
    );
  }
}
