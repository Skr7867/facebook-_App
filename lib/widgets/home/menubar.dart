// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Menubar extends StatelessWidget {
  const Menubar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(Icons.post_add_outlined),
              Text(
                'Text',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              )
            ],
          ),
        ),
        Container(
          height: 40,
          child: VerticalDivider(color: Colors.black26),
        ),
        TextButton(
          onPressed: () {
            print('Live Video');
          },
          child: Row(
            children: [
              Icon(Icons.video_call, color: Colors.redAccent),
              Text(
                'Live Video',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              )
            ],
          ),
        ),
        Container(
          height: 40,
          child: VerticalDivider(color: Colors.black26),
        ),
        TextButton(
          onPressed: () {
            print('Location');
          },
          child: Row(
            children: [
              Icon(Icons.location_on, color: Colors.redAccent),
              Text(
                'Location',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
