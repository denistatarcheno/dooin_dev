import 'package:dooin_dev/utils/crypto.dart';
import 'package:dooin_dev/widgets/crypto_widget.dart';
import 'package:flutter/material.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({Key? key}) : super(key: key);

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
      body: ListView.builder(
        itemCount: cryptos.length,
        itemBuilder: ((context, index) {
          return CryptoWidget(
            imageUrl: cryptos[index].imageUrl,
            title: cryptos[index].title,
            description: cryptos[index].description,
            panel: cryptos[index].price.toString(),
          );
        }),
      ),
    );
  }
}
