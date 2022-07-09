import 'package:dooin_dev/utils/curencies.dart';
import 'package:flutter/material.dart';
import 'currency_widget.dart';

class CurrencyList extends StatelessWidget {
  const CurrencyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff303030),
      appBar: AppBar(
        centerTitle: false,
        elevation: 1.0,
        backgroundColor: const Color(0xff303030),
        title: const Text("Currency"),
        titleTextStyle: const TextStyle(
          color: Color(0xffFFFFFF),
          fontSize: 36,
          fontWeight: FontWeight.w600,
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
