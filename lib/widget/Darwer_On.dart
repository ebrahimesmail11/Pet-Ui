import 'package:flutter/material.dart';
import 'package:pet_setup_app/condiguration.dart';

class DrawerOn extends StatelessWidget {
  const DrawerOn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(
        left: 5,
      ),
      child: Column(
        children: drawerItems
            .map(
              (elemnt) => SizedBox(
            height: 70,
            child: Row(
              children: [
                Icon(
                  elemnt['icon'],
                  size: 24,
                  color: Colors.white.withOpacity(0.4),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(elemnt['title'],
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.4))),
              ],
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}
