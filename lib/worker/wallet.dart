import 'package:flutter/material.dart';
import 'package:hackathon2/wallet/tezos_service.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return TezosPage();
  }
}