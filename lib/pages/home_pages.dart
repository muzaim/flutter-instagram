import 'package:belajar_instagram/widgets/bubble_story.dart';
import 'package:belajar_instagram/widgets/user_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePages extends StatelessWidget {
  HomePages({super.key});
  final List _users = [
    "Your story", // Alvin Henry
    "azkya.susanti", // Azkya Putri
    "pribadi.ikmal", // Johan Santoso
    "alfahrianto", // Alfa Hrianto
    "setiawan", // Alan Setiawan
    "rahmawati", // Dwi Rahmawati
    "indra", // Indra Hermawan
    "rani_susanti" // Rani Susanti
  ];

  final List<Map<String, String>> _userposts = [
    {
      'name': 'rahman.aji',
      'caption':
          'Senin pagi, aku pergi ke pasar untuk membeli bahan makanan. Setelah itu, aku bertemu dengan beberapa teman lama.',
      'time': '13 mins ago',
    },
    {
      'name': 'steffany.agustin',
      'caption':
          'Liburan ke Bali benar-benar menyegarkan. Aku menikmati pantai dan kuliner lokal yang lezat.',
      'time': '2 hours ago',
    },
    {
      'name': 'kurnia.setiawan',
      'caption':
          'Makan siang di cafe baru yang cozy. Sepiring pasta dengan saus keju yang enak dan segelas jus mangga.',
      'time': '1 hari yang lalu',
    },
    {
      'name': 'prasetyowhy',
      'caption':
          'Menonton film baru yang sangat seru. Ceritanya penuh dengan plot twist yang tak terduga!',
      'time': '5 hours ago',
    },
    {
      'name': 'wijayarealofficial',
      'caption':
          'Olahraga pagi adalah kebiasaan yang membuat tubuh lebih bugar. Berlari di taman kota membuat hari terasa segar.',
      'time': '10 mins ago',
    },
    {
      'name': 'aldo.prabowo',
      'caption':
          'Ngopi sore di kedai kopi favorit. Kopi hitam yang kental cocok untuk menemani waktu santai.',
      'time': '30 mins ago',
    },
    {
      'name': 'kirana.sakti',
      'caption':
          'Belanja online hari ini. Semua barang yang aku beli tiba dengan cepat dan dalam kondisi yang sangat baik.',
      'time': '3 hours ago',
    },
    {
      'name': 'devilestari__',
      'caption':
          'Reuni dengan teman-teman sekolah. Kami mengenang masa-masa indah dan berbagi cerita kehidupan.',
      'time': '1 hari yang lalu',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: SvgPicture.asset('assets/icons/ic_logo.svg'),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.favorite_outline,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SvgPicture.asset('assets/icons/ic_send.svg'),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _users.length,
                itemBuilder: (context, index) {
                  return BubbleStory(
                    name: _users[index],
                    isFirst: index == 0,
                  );
                },
              )),
          Divider(
            height: 1,
            color: Colors.grey[300],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _userposts.length,
                itemBuilder: (context, index) {
                  return UserPost(
                    name: _userposts[index]['name']!,
                    caption: _userposts[index]['caption']!,
                    time: _userposts[index]['time']!,
                  );
                }),
          )
        ],
      ),
    );
  }
}
