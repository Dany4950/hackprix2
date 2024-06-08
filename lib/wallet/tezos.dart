// import 'package:tezart/tezart.dart';

// class TezosService {
//   late TezartClient client;
//   KeyPair? keyPair;

//   TezosService() {
//     // Initialize the Tezos client with a public Tezos node
//     client = TezartClient('https://mainnet-tezos.giganode.io');
//   }

//   // Create a new wallet
//   Future<void> createWallet() async {
//     final mnemonic = TezartKey.mnemonic;
//     keyPair = TezartKey.fromMnemonic(mnemonic: mnemonic).keyPair;
//     print('Mnemonic: $mnemonic');
//     print('Address: ${keyPair!.publicKey}');
//   }

//   // Import an existing wallet using mnemonic
//   Future<void> importWallet(String mnemonic) async {
//     keyPair = TezartKey.fromMnemonic(mnemonic: mnemonic).keyPair;
//     print('Imported Address: ${keyPair!.publicKey}');
//   }

//   // Get the balance of the wallet
//   Future<int> getBalance() async {
//     if (keyPair == null) throw Exception('Wallet not initialized');
//     final address = keyPair!.publicKey;
//     final balance = await client.rpc.getBalance(address: address);
//     return balance;
//   }
// }
