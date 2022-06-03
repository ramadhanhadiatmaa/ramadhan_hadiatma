// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../components/animated_counter.dart';
import '../../constants.dart';
import 'high_light.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighLight(
            counter: AnimatedCounter(
              value: 100,
              text: '+',
            ),
            label: 'Subscribers',
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 50,
              text: '+',
            ),
            label: 'Clients',
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 10,
              text: '+',
            ),
            label: 'Country',
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 100,
              text: '+',
            ),
            label: 'App Sold',
          ),
        ],
      ),
    );
  }
}
