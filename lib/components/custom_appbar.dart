import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final Size preferredSize;

  final String text;

  CustomAppBar({
    Key key,
    this.text,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: true,
      title: Image.asset(
        "assets/Vision Cure@3x.png",
        fit: BoxFit.contain,
        height: 40,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {},
        )
      ],
      iconTheme: IconThemeData(color: Colors.grey),
    );
  }
}
