import 'package:flutter/material.dart';

class ProfileReels extends StatelessWidget {
  final String name;
  final bool
      isFirst; // Menambahkan parameter untuk menandakan apakah ini item pertama

  const ProfileReels({super.key, required this.name, this.isFirst = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 43,
                backgroundColor: isFirst
                    ? Colors.transparent
                    : Colors.grey[350], // No border for first item
                child: CircleAvatar(
                  radius: 39,
                  backgroundImage: NetworkImage(
                      'https://picsum.photos/600/300?random=$name'),
                ),
              ),
              if (isFirst)
                Positioned(
                  right: -2,
                  bottom: -2,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.add_circle,
                      color: Colors.blue,
                      size: 30,
                    ),
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
