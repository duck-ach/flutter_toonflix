import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    // http.dart의 라이브러리 메소드
    // 어떤 요청에 get 요청을 보냄
    final url = Uri.parse('$baseUrl/$today');

    // Future 타입은 미래에 받을 값을 담는 타입
    // 응답 값이 중요하기 때문에 await을 사용하여 응답이 있을 때까지 기다림
    // (async 내에서만 사용가능)

    // Future가 완료될때까지 기다렸다가 response를 Response 타입으로 줌
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        print(webtoon);
      }
      return;
    }
    throw Error();
  }
}
