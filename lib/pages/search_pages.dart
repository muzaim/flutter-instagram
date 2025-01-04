import 'package:flutter/material.dart';

class SearchPages extends StatelessWidget {
  const SearchPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Menghilangkan shadow app bar
        title: Padding(
          padding: const EdgeInsets.only(
              top:
                  8.0), // Memberikan padding agar teks tidak terlalu dekat dengan AppBar
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.grey[300]!,
                  width: 1), // Border abu-abu seperti Instagram
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle:
                    TextStyle(color: Colors.grey[500]), // Warna teks hint
                prefixIcon: Icon(Icons.search,
                    color: Colors.grey[500]), // Ikon pencarian
                border: InputBorder.none, // Menghilangkan border default
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              ),
            ),
          ),
        ),
        centerTitle: false, // Agar title tidak berada di tengah
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,
                      childAspectRatio: 1),
                  itemBuilder: (context, index) {
                    return Image.network(
                      "https://picsum.photos/600/300?random=${index + 100}", // Menambahkan 100 pada index
                      fit: BoxFit.cover, // Mengatur gambar agar terisi penuh
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
