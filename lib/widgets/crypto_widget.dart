import 'package:flutter/material.dart';

class CryptoWidget extends StatelessWidget {
  final String title;
  final String description;
  final String panel;
  final String imageUrl;
  const CryptoWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.panel,
    required this.imageUrl,
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
          left: 8.0,
          top: 12.0,
          right: 8.0,
          bottom: 12.0,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 12.0,
                top: 12.0,
                right: 12.0,
                bottom: 21.0,
              ),
              child: Image.network(
                imageUrl,
                width: 28.0,
                height: 28.0,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
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
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.0,
                top: 20.0,
                right: 18.0,
                bottom: 20.0,
              ),
              child: Text(
                panel,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
