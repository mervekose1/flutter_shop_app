import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // space between widgets
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          //  drawer is working :)
          child: Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.dashboard,
                color: Color.fromARGB(255, 73, 243, 192),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        Column(
          children: const [
            Text(
              "User Name",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Text(
              "Location",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 73, 243, 192),
        ),
      ],
    );
  }
}
