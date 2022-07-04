import 'package:dooin_dev/utils/crypto.dart';
import 'package:dooin_dev/widgets/crypto_widget.dart';
import 'package:flutter/material.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: crypto.length,
      itemBuilder: ((context, index) {
        return CryptoWidget(
          imageUrl: crypto[index].imageUrl,
          title: crypto[index].title,
          description: crypto[index].description,
          panel: crypto[index].price.toString(),
        );
      }),
    );
  }
}
