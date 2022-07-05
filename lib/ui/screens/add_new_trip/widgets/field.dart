import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/common_widgets/custom_text_field.dart';
import 'package:flutter_camping_app/ui/utils/theme_utils.dart';

Widget buildField(String title, TextEditingController controller, String hint,
    TextInputType inputType) {
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
        CustomTextField(
          controller: controller,
          hint: hint,
          inputType: inputType,
          obscureText:
              inputType == TextInputType.visiblePassword ? true : false,
          validator: (value) {
            return true;
          },
        ),
      ],
    ),
  );
}
