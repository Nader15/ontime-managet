import 'package:flutter/material.dart';

import '../../Utils/app_colors.dart';

class ButtonListWidget extends StatelessWidget {
  const ButtonListWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 8),
        TextFormField(
          onTap: () {},
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffF9F9F9),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)),
            suffixIcon: const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: AppColors.DARK_GREY_COLOR,
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
