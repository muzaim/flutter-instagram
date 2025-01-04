import 'package:belajar_instagram/pages/home_pages.dart';
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
    const Center(
      child: Text("Add Post"),
    ),
    const Center(
      child: Text("Reels"),
    ),
    const Center(
      child: Text("Account"),
    ),
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
                icon: Icon(
                    _selectedItem == 4 ? Icons.person : Icons.person_outlined),
                label: "Account"),
          ]),
    );
  }
}
