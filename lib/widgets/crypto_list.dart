import 'package:dooin_dev/models/inset_model.dart';
import 'package:dooin_dev/utils/insets.dart';
import 'package:flutter/material.dart';
import 'inset_widget.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: insets.length,
      itemBuilder: ((context, index) {
        return InsetWidget(
          imageUrl: insets[index].imageUrl,
          title: insets[index].title,
          description: insets[index].description,
          panel: insets[index].price.toString(),
        );
      }),
    );
  }
}
