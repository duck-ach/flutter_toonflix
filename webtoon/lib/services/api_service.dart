import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() {
    // http.dart의 라이브러리 메소드
    // 어떤 요청에 get 요청을 보냄
    final url = Uri.parse('$baseUrl/$today');
    http.get(url);
  }
}
