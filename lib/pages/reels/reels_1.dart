import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Reels1 extends StatefulWidget {
  const Reels1({super.key});

  @override
  State<Reels1> createState() => _Reels1State();
}

class _Reels1State extends State<Reels1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Image.network(
                  "https://picsum.photos/600/1000?random=temple",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                ),
                Container(
                  color: Colors.black
                      .withOpacity(0.3), // Warna hitam dengan transparansi 50%
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 12,
            left: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 17,
                          backgroundImage:
                              NetworkImage('https://i.pravatar.cc/100?u=roses'),
                        ),
                      ),
                    ),
                    Text(
                      "asri.meranti",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Colors.grey[350]!, width: 1),
                        ),
                        height: 25,
                        width: 60,
                        child: Center(
                            child: Text(
                          "Follow",
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        )),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Menjelajah dunia yang tak terbatas ini, membuatku...",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 12,
            bottom: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .end, // Membalik urutan menjadi dari bawah ke atas
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                      size: 35,
                    ),
                    Text(
                      "962",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.comment_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      "1.821",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/ic_send.svg',
                      color: Colors.white,
                    ),
                    Text(
                      "460",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.bookmark,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      "271",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 35,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
