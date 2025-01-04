import 'package:belajar_instagram/widgets/profile_reels.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List _tours = [
    "Bali", // Pulau Bali
    "Yogyakarta", // Kota Yogyakarta
    "Raja Ampat", // Kepulauan Raja Ampat
    "Komodo Island", // Pulau Komodo
    "Mount Bromo", // Gunung Bromo
    "Lake Toba", // Danau Toba
    "Gili Islands", // Kepulauan Gili
    "Bukit Lawang", // Bukit Lawang, Sumatra
    "Taman Safari Indonesia", // Taman Safari Indonesia
    "Toraja", // Toraja, Sulawesi
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Row(
            children: [
              Icon(Icons.lock_outline),
              SizedBox(width: 8), // Jarak antara logo dan teks
              Text(
                "taylor.swift",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 4), // Jarak antara logo dan teks
              Icon(
                Icons.arrow_drop_down,
                size: 30,
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.add_a_photo_outlined),
              onPressed: () {
                // Tambahkan aksi sesuai kebutuhan
              },
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Tambahkan aksi sesuai kebutuhan
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 46,
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(
                              'https://i.pravatar.cc/100?u=Your story'),
                        ),
                      ),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 97, // Lebar tetap untuk setiap kolom
                        child: Column(
                          children: [
                            Text(
                              "3",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 4), // Jarak antar teks
                            Text("Posts"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 97,
                        child: Column(
                          children: [
                            Text(
                              "2.359",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 4),
                            Text("Followers"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 97,
                        child: Column(
                          children: [
                            Text(
                              "927",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 4),
                            Text("Followings"),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Memastikan semua elemen sejajar di kiri
                children: [
                  Text(
                    "Travel influencer",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "bit.ly/travel-me",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 8, bottom: 8),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[350]!, width: 1),
                      ),
                      height: 30,
                      width: 155,
                      child: Center(
                          child: Text(
                        "Edit Profile",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[350]!, width: 1),
                      ),
                      height: 30,
                      width: 155,
                      child: Center(
                          child: Text(
                        "Share Profile",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[350]!, width: 1),
                      ),
                      height: 30,
                      width: 50,
                      child: Center(
                          child: Icon(
                        Icons.person_2_outlined,
                        color: Colors.black,
                      )),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _tours.length,
                    itemBuilder: (context, index) {
                      return ProfileReels(
                        name: _tours[index],
                      );
                    },
                  )),
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // Membuat jarak antar ikon
              children: [
                Column(
                  mainAxisSize: MainAxisSize
                      .min, // Menjaga agar Column tidak mengambil ruang lebih
                  children: [
                    Icon(Icons.browse_gallery_outlined),
                    Container(
                      margin: const EdgeInsets.only(
                          top:
                              5), // Memberikan jarak antara ikon dan garis bawah
                      height: 1, // Menentukan ketebalan garis
                      width: 30, // Menentukan panjang garis
                      color: Colors.black, // Warna garis
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize
                      .min, // Menjaga agar Column tidak mengambil ruang lebih
                  children: [
                    Icon(Icons.video_settings_outlined),
                    Container(
                      margin: const EdgeInsets.only(
                          top:
                              5), // Memberikan jarak antara ikon dan garis bawah
                      height: 0, // Menentukan ketebalan garis
                      width: 30, // Menentukan panjang garis
                      color: Colors.black, // Warna garis
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize
                      .min, // Menjaga agar Column tidak mengambil ruang lebih
                  children: [
                    Icon(Icons.person_add_alt),
                    Container(
                      margin: const EdgeInsets.only(
                          top:
                              5), // Memberikan jarak antara ikon dan garis bawah
                      height: 0, // Menentukan ketebalan garis
                      width: 30, // Menentukan panjang garis
                      color: Colors.black, // Warna garis
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              color: Colors.grey[300],
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,
                      childAspectRatio: 1),
                  itemBuilder: (context, index) {
                    return Image.network(
                      "https://picsum.photos/600/300?random=${index + 827}", // Menambahkan 100 pada index
                      fit: BoxFit.cover, // Mengatur gambar agar terisi penuh
                    );
                  }),
            ),
          ],
        ));
  }
}
