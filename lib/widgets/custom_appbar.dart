import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Image.asset(
            'assets/hse.png',
            width: 40,
            height: 40,
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
      title: Row(
        children: [
          const Text(
            'By',
            style: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w200,
                color: Colors.black,
                fontSize: 16),
          ),
          const SizedBox(
            width: 3,
          ),
          Transform.translate(
            offset: const Offset(0.0, -5.0),
            child: Image.asset(
              'assets/Qara_Logo.png',
              height: 24,
              width: 55,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
          ),
          const Text(
            'دعوة صديق',
            style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 0, 0, 1)),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
