import 'package:flutter/material.dart';

import 'package:quoteapp/quotePage.dart';

void main () => runApp(quoteApp());

class quoteApp extends StatelessWidget {
  const quoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotes Inspiration',
      home: wisdomQuotes(),
    );
  }
}
