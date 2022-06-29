import 'package:dooin_dev/models/inset_model.dart';
import 'package:dooin_dev/widgets/inset_widget.dart';
import 'package:flutter/material.dart';

class CurrencyScreen extends StatelessWidget {
  CurrencyScreen({Key? key}) : super(key: key);
  final List<InsetModel> _inset = [
    InsetModel('EUR', 'EUR'),
    InsetModel('CAD', 'CAD'),
    InsetModel('CZK', 'CZK'),
    InsetModel('UAH', 'UAH'),
    InsetModel('EUR', 'EUR'),
    InsetModel('CAD', 'CAD'),
    InsetModel('CZK', 'CZK'),
    InsetModel('UAH', 'UAH'),
    InsetModel('EUR', 'EUR'),
    InsetModel('CAD', 'CAD'),
    InsetModel('CZK', 'CZK'),
    InsetModel('UAH', 'UAH'),
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
        itemCount: _inset.length,
        itemBuilder: ((context, index) {
          return InsetWidget(
            title: _inset[index].title,
            description: _inset[index].description,
            panel: _inset[index].price.toString(),
          );
        }),
      ),
    );
  }
}
