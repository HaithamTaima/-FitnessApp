import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  final String title;
  final String? value;
  final String icons;
  final void Function()? onTap;

  SettingWidget({
    required this.title,
    this.value,
    required this.icons,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(icons),
            const SizedBox(
              width: 10,
            ),
            Text(title,
                style: const TextStyle(color: Colors.white, fontSize: 15)),
            const Spacer(),
            if (value != null)
              Text(
                value!,
                style: const TextStyle(fontSize: 14, color: Color(0xFF777A91)),
              ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.keyboard_arrow_right_sharp,
              size: 25,
              color: Color(0xFF646781),
            ),
          ],
        ),
      ),
    );
  }
}
