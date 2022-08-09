import 'package:flutter/material.dart';

import '../responsive/widgets/contacts_list.dart';

class WebLayoutScreen extends StatelessWidget {
  const WebLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            //web Profile Bar
            //Web Search Bar
            ContactsList(),
          ],
        ),
        //web screen
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover,
                  ),
                  ),
        ),
      ],
    ));
  }
}
