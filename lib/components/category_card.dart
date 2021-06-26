import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String imgPath;
  final String text;
  final Function press;
  const CategoryCard({
    Key key,
    this.imgPath,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 10), // Fixed scaling issues on a lower aspect ratio
      child: Container(
        height: size.height / 5.5,
        width: size.width / 3.6,
        child: Column(
          children: [
            GestureDetector(
              onTap: press,
              child: Image.asset(
                imgPath,
                height: 100,
                width: 100,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 12),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
