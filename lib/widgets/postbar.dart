// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Postbar extends StatelessWidget {
  const Postbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          iconSize: 50,
          onPressed: () {
            print('user avatar clicked');
          },
          icon: CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('assets/images/user/sonam.jpg'),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Whats on your mind?',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
            ),
          ),
        ),
        Container(
          height: 60,
          child: VerticalDivider(color: Colors.black26),
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.photo_album_outlined),
            ),
            Text('Photo')
          ],
        ),
      ],
    );
  }
}
