import 'package:flutter/material.dart';
import 'package:isengdoang/extensions/extension.dart';
import 'package:isengdoang/pages/pagetree.dart';

class ArgumentAddiotional {
  String name;
  String address;

  ArgumentAddiotional({required this.name, required this.address});
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as ArgumentAddiotional;
    print('name :${args.name}');

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            'Page Two'.mytext(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                'Back Page'.mybuttonBack(context),
                'Move Page'.mybuttonNext('/PageTree', context,
                    argumentsClass: Animals('Tiger Sumatra', 'Indonesia'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
