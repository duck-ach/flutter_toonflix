import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _AppState();
}

class _AppState extends State<MyApp> {
  bool showTitle = false;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.blueGrey,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing'),
              IconButton(
                  onPressed: toggleTitle,
                  icon: const Icon(Icons.remove_red_eye_outlined))
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

/*
  int count = 0;
  보통은 위 처럼 field 선언으로 초기화하면 되지만,
  종종 부모 요소로부터 의존하는 데이터를 초기화해야하는 경우 사용.
  (항상 build 메소드보다 먼저 호출되어야 함)
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
*/
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('do init State!');
  }

/*
  dispose
  위젯이 스크린에서 제거될 때 호출되는 메서드
  - API 업데이트
  - 이벤트리스너로부터 구독취소
  - form의 리스너로부터 벗어나고싶을 때
  - 위젯이 위젯트리에서 제거되기 전
*/
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose!');
  }

  @override
  Widget build(BuildContext context) {
    print('do build!');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 24,
        color: Theme.of(context).textTheme.titleLarge!.color,
      ),
    );
  }
}
