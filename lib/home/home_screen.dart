// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ramadhan_portfolio/constants.dart';
import 'package:ramadhan_portfolio/models/recommendation.dart';
import 'package:ramadhan_portfolio/screens/main_screen.dart';

import 'components/high_light_info.dart';
import 'components/home_banner.dart';
import 'components/my_project.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightInfo(),
        MyProject(),
        Column(
          children: [
            Text(
              'Recommendation',
              style: Theme.of(context).textTheme.headline6,
            ),
            Container(
              width: 400,
              padding: EdgeInsets.all(defaultPadding),
              color: secondaryColor,
              child: Column(
                children: [
                  Text(
                    demo_recommendation[0].name!,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(demo_recommendation[0].source!),
                  const SizedBox(height: defaultPadding),
                  Text(
                    demo_recommendation[0].text!,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
