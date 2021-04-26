import 'package:flutter/material.dart';


import '../../../constants.dart';


class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 40,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search...',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
