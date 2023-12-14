import 'package:flutter/material.dart';

class PostModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  PostModel(
      {required this.avatarOnPressed,
      required this.avatarImage,
      required this.name,
      required this.time,
      required this.moreOnPressed,
      required this.postTitle,
      required this.postImage,
      required this.likeOnPressed,
      required this.commentOnPressed,
      required this.shareOnPressed});
}

List<PostModel> postData = [
  PostModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: 'assets/images/user/sonam.jpg',
    name: 'Sonam Sharma',
    time: 'Just Now',
    moreOnPressed: () => print('More Clicked'),
    postTitle: 'this is my new profile picture',
    postImage: "assets/images/user/sonam.jpg",
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('comment clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  PostModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: 'assets/images/user/u1.jpg',
    name: 'Sumit',
    time: '8 min ago',
    moreOnPressed: () => print('More Clicked'),
    postTitle:
        'There are many variations of passages of lorem Ipsum available, but the majority have suffered alternation in some form, by injected homour, or randomised words which dont look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there is not anything embrrassing hidden in the middle of the text. All the lorem ipsum generator on the internet tend to repeat predifined chunks as neccesary, making this the first true generator on the Internet.',
    postImage: "assets/images/post/bird.jpg",
    likeOnPressed: () => print('liked clicked'),
    commentOnPressed: () => print('Comment clicked'),
    shareOnPressed: () => print('Share clicked'),
  ),
  PostModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: 'assets/images/user/u8.jpg',
    name: 'Vincenzo Cassino',
    time: '8 min ago',
    moreOnPressed: () => print('More Clicked'),
    postTitle:
        'There are many variations of passages of lorem Ipsum available, but the majority have suffered alternation in some form, by injected homour, or randomised words which dont look even slightly believable.',
    postImage: "assets/images/post/mafia.jpg",
    likeOnPressed: () => print('liked clicked'),
    commentOnPressed: () => print('Comment clicked'),
    shareOnPressed: () => print('Share clicked'),
  ),
];
