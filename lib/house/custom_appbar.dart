import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/gameshop/game_shop.dart';
import 'package:test_flutter/shopping/shopping_page.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                       // return const GameShop();
                        return const ShoppingPage();
                      },
                    ),
                  );
                },
                icon: SvgPicture.asset('assets/icons/menu.svg')),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.svg'),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
