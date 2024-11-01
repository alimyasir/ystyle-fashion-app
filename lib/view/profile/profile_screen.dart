import 'package:flutter/material.dart';
import 'package:ystyle/constants/text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 40,
              ),
              Column(
                children: [
                  KText(text: '4'),
                  KText(text: 'AR Items'),
                ],
              ),
              Column(
                children: [
                  KText(text: '7000'),
                  KText(text: 'Followers'),
                ],
              ),
              Column(
                children: [
                  KText(text: '5000'),
                  KText(text: 'Following'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
