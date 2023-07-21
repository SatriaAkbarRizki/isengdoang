import 'package:flutter/material.dart';
import 'package:isengdoang/extensions/extension.dart';

class Animals {
  String nameAnimal;
  String country;

  Animals(this.nameAnimal, this.country);
}

class PageTree extends StatelessWidget {
  const PageTree({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Animals;
    print('Name Animal: ${args.nameAnimal}');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            'Page Tree'.mytext(context),
            'Back Page'.mybuttonBack(context)
          ],
        ),
      ),
    );
  }
}
