import 'package:Pi6/client/screens/main_page.dart';
import 'package:Pi6/providers/wallet_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import 'package:tezart/tezart.dart';

import 'client/wallet_details/wallet_details_page.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  await initialize();
  Keystore.random().publicKey;
  final client = TezartClient('http://localhost:20000/');

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => WalletDetailsProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pi6 Finance',
      home: WalletDetailsPage(),
      scrollBehavior: SBehavior(),
    );
  }
}
