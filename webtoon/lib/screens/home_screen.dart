import 'package:flutter/material.dart';
import 'package:webtoon/models/webtoon_model.dart';
import 'package:webtoon/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 음영
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          "Today's Toons",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
      ),
      // builder  == 화면을 그려주는 메소드
      // context  == 내용
      // snapshot == builder의 상태를 알 수 있음
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text("There is data !");
          }
          return const Text("Loading...");
        },
      ),
    );
  }
}
