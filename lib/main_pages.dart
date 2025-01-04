import 'package:belajar_instagram/pages/add_post.dart';
import 'package:belajar_instagram/pages/home_pages.dart';
import 'package:belajar_instagram/pages/profile.dart';
import 'package:belajar_instagram/pages/reels_pages.dart';
import 'package:belajar_instagram/pages/search_pages.dart';
import 'package:flutter/material.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int _selectedItem = 0;

  final List<Widget> _pages = [
    HomePages(),
    SearchPages(),
    AddPost(),
    ReelsPages(),
    Profile(),
  ];

  void _handleSelected(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          iconSize: 30,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: _selectedItem,
          onTap: _handleSelected,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(_selectedItem == 0
                    ? Icons.home_filled
                    : Icons.home_outlined),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                    _selectedItem == 1 ? Icons.search : Icons.search_outlined),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(_selectedItem == 2
                    ? Icons.add_box
                    : Icons.add_box_outlined),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(_selectedItem == 3
                    ? Icons.video_library
                    : Icons.video_library_outlined),
                label: "Account"),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/100?u=Your story'),
                  ),
                ),
                label: "Account"),
          ]),
    );
  }
}
