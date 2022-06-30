import 'package:dooin_dev/models/inset_model.dart';
import 'package:dooin_dev/widgets/inset_widget.dart';
import 'package:flutter/material.dart';

class CryptoScreen extends StatelessWidget {
  CryptoScreen({Key? key}) : super(key: key);

  final List<CryptoModel> _inset = [
    CryptoModel('Bitcoin', 'BTC', 10.3),
    CryptoModel('Ethereum', 'ETH', 12),
    CryptoModel('Tether', 'USDT', 13.5),
    CryptoModel('Ripple', 'XRP', 100.2),
    CryptoModel('Bitcoin', 'BTC', 10.3),
    CryptoModel('Ethereum', 'ETH', 12),
    CryptoModel('Tether', 'USDT', 13.5),
    CryptoModel('Ripple', 'XRP', 100.2),
    CryptoModel('Bitcoin', 'BTC', 10.3),
    CryptoModel('Ethereum', 'ETH', 12),
    CryptoModel('Tether', 'USDT', 13.5),
    CryptoModel('Ripple', 'XRP', 100.2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff303030),
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: const Color(0xff303030),
        title: const Text("Crypto"),
        titleTextStyle: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: ListView.builder(
        itemCount: _inset.length,
        itemBuilder: ((context, index) {
          return InsetWidget(
            title: _inset[index].title,
            description: _inset[index].description,
            panel: _inset[index].price.toString(),
          );
        }),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.currency_bitcoin_sharp),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.currency_exchange),
      //     ),
      //   ],
      //   selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
      // ),
    );
  }
}
