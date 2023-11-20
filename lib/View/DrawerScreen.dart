import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_setup_app/condiguration.dart';
import 'package:pet_setup_app/widget/Darwer_On.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Miroslava Savitskaya',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      'Active Status',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 14,
                            color: Colors.white.withOpacity(0.5),
                          ),
                    ),
                  ],
                ),
              ],
            ),
            DrawerOn(),
            Padding(
              padding: EdgeInsets.only(bottom: 30, left: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Settings    ',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white.withOpacity(0.5),
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 2,
                    height: 20,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  Text(
                    '    Log Out',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white.withOpacity(0.5),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
