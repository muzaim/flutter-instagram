import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  final String caption;
  final String time;
  const UserPost(
      {super.key,
      required this.name,
      required this.caption,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 5, right: 8),
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://i.pravatar.cc/100?u=$name'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
          const SizedBox(height: 5),
          SizedBox(
              height: 300,
              child: Image.network(
                "https://picsum.photos/600/300?random=$name",
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.pinkAccent,
                    ),
                    const SizedBox(width: 8), // Jarak antar ikon
                    Icon(Icons.chat_bubble_outline_outlined),
                    const SizedBox(width: 8), // Jarak antar ikon
                    Icon(Icons.send_outlined),
                  ],
                ),
                Icon(Icons.bookmark_outline_outlined),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Row(
              children: [
                Text('Liked by'),
                Text(
                  ' $name ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('and others.'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const WidgetSpan(
                    child: SizedBox(width: 4), // Jarak horizontal antar teks
                  ),
                  TextSpan(
                    text: caption,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Text(
              "$time ",
              style: TextStyle(color: Colors.grey[500], fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
