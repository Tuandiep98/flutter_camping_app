import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/utils/theme_utils.dart';

Widget teamMatesElement(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            title ?? 'Title',
            style: ThemeUtils.descriptionTextDarkStyle.copyWith(
              color: Colors.grey[400],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.grey[400],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
