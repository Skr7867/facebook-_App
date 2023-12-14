import 'package:flutter/material.dart';

class StoryModel {
  final VoidCallback onTap;
  final String image;
  final String userName;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.userName,
  });
}

List<StoryModel> storyData = [
  StoryModel(
    userName: "Ruchi",
    onTap: () => print('Ruchi story clicked'),
    image: "assets/images/story/s1.jpg",
  ),
  StoryModel(
    userName: "Nirupama",
    onTap: () => print('Ruchi story clicked'),
    image: "assets/images/story/s2.jpg",
  ),
  StoryModel(
    userName: "Sweta",
    onTap: () => print('Ruchi story clicked'),
    image: "assets/images/story/s3.jpg",
  ),
  StoryModel(
    userName: "Pooja",
    onTap: () => print('Ruchi story clicked'),
    image: "assets/images/story/s4.jpg",
  ),
  StoryModel(
    userName: "Jyoti",
    onTap: () => print('Ruchi story clicked'),
    image: "assets/images/story/s5.jpg",
  ),
];
