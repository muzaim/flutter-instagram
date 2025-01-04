import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {
  final String name;
  final bool
      isFirst; // Menambahkan parameter untuk menandakan apakah ini item pertama

  const BubbleStory({super.key, required this.name, this.isFirst = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 42,
                backgroundColor: isFirst
                    ? Colors.transparent
                    : Colors.pinkAccent[200], // No border for first item
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      NetworkImage('https://i.pravatar.cc/100?u=$name'),
                ),
              ),
              if (isFirst)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(name),
          )
        ],
      ),
    );
  }
}
