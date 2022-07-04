import 'package:dooin_dev/utils/curencies.dart';
import 'package:dooin_dev/widgets/currency_widget.dart';
import 'package:flutter/material.dart';

class CurrencyScreen extends StatelessWidget {
  CurrencyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff303030),
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: const Color(0xff303030),
        title: const Text("Currency"),
        titleTextStyle: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: ListView.builder(
        itemCount: curencies.length,
        itemBuilder: ((context, index) {
          return CurrencyWidget(
            title: curencies[index].title,
            description: curencies[index].description,
            panel: curencies[index].price.toString(),
          );
        }),
      ),
    );
  }
}
