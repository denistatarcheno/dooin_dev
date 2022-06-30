import 'package:dooin_dev/models/currency_model.dart';
import 'package:dooin_dev/widgets/inset_widget.dart';
import 'package:flutter/material.dart';

class CurrencyScreen extends StatelessWidget {
  CurrencyScreen({Key? key}) : super(key: key);
  final List<CurrencyModel> _insets = [
    CurrencyModel('EUR', 'EUR', 18),
    CurrencyModel('CAD', 'CAD', 15),
    CurrencyModel('CZK', 'CZK', 17),
    CurrencyModel('UAH', 'UAH', 12),
    CurrencyModel('EUR', 'EUR', 18),
    CurrencyModel('CAD', 'CAD', 15),
    CurrencyModel('CZK', 'CZK', 17),
    CurrencyModel('UAH', 'UAH', 12),
    CurrencyModel('EUR', 'EUR', 18),
    CurrencyModel('CAD', 'CAD', 15),
    CurrencyModel('CZK', 'CZK', 17),
    CurrencyModel('UAH', 'UAH', 12),
  ];

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
        itemCount: _insets.length,
        itemBuilder: ((context, index) {
          return InsetWidget(
            title: _insets[index].title,
            description: _insets[index].description,
            panel: _insets[index].price.toString(),
            imageUrl: _insets[index].price.toString(),
          );
        }),
      ),
    );
  }
}
