import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      height: 50,
      decoration: BoxDecoration(
          color: Color(0xffEFEFEF), borderRadius: BorderRadius.circular(14)),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Color(0xffEFEFEF),
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          labelText: 'Search',
        ),
      ),
    );
  }
}
