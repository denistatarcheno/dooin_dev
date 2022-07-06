import 'package:dooin_dev/widgets/crypto_list.dart';
import 'package:dooin_dev/widgets/currency_list.dart';
import 'package:flutter/material.dart';

class CryptoScreen extends StatefulWidget {
  CryptoScreen({Key? key}) : super(key: key);

  @override
  State<CryptoScreen> createState() => _CryptoScreenState();
}

class _CryptoScreenState extends State<CryptoScreen> {
  int _selectedIndex = 0;

  static List<Widget> _screensOptions = <Widget>[
    CryptoList(),
    CurrencyList(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    print("INIT STATE IS CALLED");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff303030),
      body: _screensOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff303030),
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_bitcoin_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.currency_exchange,
            ),
            label: '',
          ),
        ],
        iconSize: 30,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
