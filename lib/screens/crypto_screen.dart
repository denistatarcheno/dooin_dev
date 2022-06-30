import 'package:dooin_dev/models/inset_model.dart';
import 'package:dooin_dev/widgets/crypto_list.dart';
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
    Text(
      "Test 2",
      style: const TextStyle(
        color: Colors.white,
        fontSize: 34,
      ),
    ),
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
      appBar: AppBar(
        centerTitle: false,
        elevation: 1.0,
        backgroundColor: const Color(0xff303030),
        title: const Text("Crypto"),
        titleTextStyle: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w700,
        ),
      ),
      // body: ListView.builder(
      //   itemCount: _inset.length,
      //   itemBuilder: ((context, index) {
      //     return InsetWidget(
      //       title: _inset[index].title,
      //       description: _inset[index].description,
      //       panel: _inset[index].price.toString(),
      //     );
      //   }),
      // ),
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
        iconSize: 23,
        // selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.amber,
      ),
    );
  }
}
