import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ramadhan_portfolio/constants.dart';
import 'package:ramadhan_portfolio/screens/components/area_info_text.dart';

import '../../coding.dart';
import '../../components/animated_progress_indicator.dart';
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: defaultPadding),
                            child: Text(
                              "Knowledge",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ),
                          Knowledge(
                            text: 'Android Studio',
                          ),
                          Knowledge(
                            text: 'Flutter',
                          ),
                          Knowledge(
                            text: 'Rest API',
                          ),
                        ],
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}

class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          SizedBox(width: defaultPadding / 2),
          Text(text)
        ],
      ),
    );
  }
}
