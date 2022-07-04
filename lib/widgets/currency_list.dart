import 'package:dooin_dev/utils/curencies.dart';
import 'package:flutter/material.dart';
import 'currency_widget.dart';

class CurrencyList extends StatelessWidget {
  const CurrencyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: curencies.length,
      itemBuilder: ((context, index) {
        return CurrencyWidget(
          title: curencies[index].title,
          description: curencies[index].description,
          panel: curencies[index].price.toString(),
        );
      }),
    );
  }
}
