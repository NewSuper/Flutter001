import 'package:flutter/material.dart';
import 'package:flutter001/ui/coffee/round_button.dart';

import 'menu_item.dart';
import 'menu_screen.dart';

class ViewMenu extends StatelessWidget {
  const ViewMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      child: RoundButton(
        title: 'View Menu',
        press: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const MenuScreen();
              },
            ),
          );
        },
      ),
    );
  }
}
