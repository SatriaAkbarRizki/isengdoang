import 'package:flutter/material.dart';
import 'package:isengdoang/extensions/extension.dart';
import 'package:isengdoang/pages/pagetwo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: 'Move'.mytext(context),
          ),
          'push to page'.mybuttonNext('/PageTwo', context, argumentsClass: ArgumentAddiotional(name: 'name', address: 'address'))
        ],
      ),
    );
  }
}
