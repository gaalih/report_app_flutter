import 'package:flutter/material.dart';

class Navigation extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;

  const Navigation(
      {super.key, required this.title, this.showBackButton = true});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60.0),
      child: AppBar(
        automaticallyImplyLeading: showBackButton,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        elevation: 1,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            title,
            style: const TextStyle(color: Colors.black),
          ),
          Container(
            height: 35,
            width: 35,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/avatar.png"),
            ),
          ),
        ]),
      ),
    );
  }
  // return PreferredSize(
  //   preferredSize: const Size.fromHeight(80.0),
  //   child: Container(
  //     decoration: const BoxDecoration(
  //       gradient: LinearGradient(
  //         colors: <Color>[Colors.blue, Colors.pink],
  //       ),
  //     ),
  //     child: const AppBarContent(),
  //   ),
  // );

  @override
  Size get preferredSize => AppBar().preferredSize;
}

class AppBarContent extends StatelessWidget {
  const AppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              const Text(
                'PreferredSize Sample',
                style: TextStyle(color: Colors.white),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 20,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  size: 20,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
