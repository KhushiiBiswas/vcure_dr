import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/schedule_card.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: ScheduleCard(),
        ),
      ),
    );
  }
}
