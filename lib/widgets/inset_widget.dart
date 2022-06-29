import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InsetWidget extends StatelessWidget {
  final String title;
  final String description;
  final String panel;
  const InsetWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.panel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff111111),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 4.0,
          top: 12.0,
          right: 8.0,
          bottom: 10.0,
        ),
        child: Row(
          children: [
            Image.network(
              'https://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png?i=1',
              width: 60.0,
              height: 40.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    description,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                )
              ],
            ),
            Text(
              panel,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
