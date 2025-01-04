import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Reels2 extends StatefulWidget {
  const Reels2({super.key});

  @override
  State<Reels2> createState() => _Reels2State();
}

class _Reels2State extends State<Reels2> {
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
                  "https://picsum.photos/600/1000?random=china town",
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
                          backgroundImage: NetworkImage(
                              'https://i.pravatar.cc/100?u=vernanda'),
                        ),
                      ),
                    ),
                    Text(
                      "vernanda.hula",
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
                        "Jauh, tak tercapai, namun harus tetap berusaha...",
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
                      "205",
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
                      "2.381",
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
                      "911",
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
                      "391",
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
