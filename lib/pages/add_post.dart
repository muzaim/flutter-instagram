import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            Icon(Icons.compress_outlined),
            SizedBox(width: 8), // Jarak antara logo dan teks
            Text(
              "Add new post",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text(
              "Next",
              style: TextStyle(fontSize: 20, color: Colors.lightBlueAccent),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 400,
            child: Image.network(
              "https://picsum.photos/600/300?random=mountain", // URL gambar dinamis
              fit: BoxFit.fitHeight, // Mengatur gambar agar terisi penuh
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Older",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey[350]!, width: 1),
                    ),
                    height: 30,
                    width: 155,
                    child: Center(
                        child: Text(
                      "Pick some ",
                      style: TextStyle(color: Colors.black, fontSize: 11),
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.camera_alt_outlined),
                ]),
              ],
            ),
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
                    "https://picsum.photos/600/300?random=${index + 1000}", // Menambahkan 100 pada index
                    fit: BoxFit.cover, // Mengatur gambar agar terisi penuh
                  );
                }),
          ),
        ],
      ),
    );
  }
}
