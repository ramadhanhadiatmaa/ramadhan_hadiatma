// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ramadhan_portfolio/constants.dart';
import 'package:ramadhan_portfolio/screens/components/area_info_text.dart';

import '../../coding.dart';
import '../../knowledges.dart';
import '../../skills.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: [
                      AreaInfoText(
                        title: 'Residence',
                        text: 'Indonesian',
                      ),
                      AreaInfoText(
                        title: 'City',
                        text: 'Bandung',
                      ),
                      AreaInfoText(
                        title: 'Age',
                        text: '26',
                      ),
                      Skills(),
                      SizedBox(height: defaultPadding),
                      Coding(),
                      Knowledges(),
                      Divider(),
                      SizedBox(height: defaultPadding / 2),
                      TextButton(
                        onPressed: () {},
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                'DOWNLOAD CV',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                              ),
                              SizedBox(width: defaultPadding / 2),
                              SvgPicture.asset('assets/icons/download.svg')
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: defaultPadding),
                        color: Color(0xFF24242E),
                        child: Row(
                          children: [
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    'assets/icons/linkedin.svg')),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    'assets/icons/github.svg')),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    'assets/icons/twitter.svg')),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    'assets/icons/behance.svg')),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    'assets/icons/dribble.svg')),
                            Spacer(),
                          ],
                        ),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
