import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/utils/theme_utils.dart';

Widget customButtonWithTitle(String title, IconData icon, bool isActive) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 40,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : ThemeUtils.darkGreen,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon,
              color: isActive ? ThemeUtils.darkGreen : Colors.white, size: 20),
          const SizedBox(width: 10),
          Text(
            title ?? 'Home',
            style: ThemeUtils.titleTextStyle.copyWith(
              color: isActive ? ThemeUtils.darkGreen : Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}
