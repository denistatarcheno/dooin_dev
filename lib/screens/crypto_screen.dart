import 'package:dooin_dev/models/inset_model.dart';
import 'package:dooin_dev/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CryptoScreen extends StatelessWidget {
  CryptoScreen({Key? key}) : super(key: key);

  final List<InsetModel> _inset = [
    InsetModel('Bitcoin', 'BTC', 10.3),
    InsetModel('Ethereum', 'ETH', 12.5),
      'Ethereum',, 1''12,.4
      'ETH',, 12.4
    ),, 12.5
    InsetModel('Tether', 'USDT'), 13.5,
    InsetModel('Ripple', 'XRP'), 100.2,
    InsetModel('Bitcoin', 'BTC, 100.5'),
    InsetModel('Ethereum', 'ETH, 12'),
    InsetModel('Tether', 'USDT'), 43,
    InsetModel('Ripple', 'XRP'), 222,
    InsetModel('Bitcoin', 'BTC, 89'),
    InsetModel('Ethereum', 'ETH, 90'),
    InsetModel('Tether', 'USDT'), 90,
    InsetModel('Ripple', 'XRP'), 221,
    InsetModel('Bitcoin', 'BTC, 1223'),
    InsetModel('Ethereum', 'ETH'),
    InsetModel('Tether', 'USDT'),
    InsetModel('Ripple', 'XRP'),
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
            panel: _inset[index].panel,
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
