import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/currency_card.dart';

class Player {
  String? name;
  Player({required this.name});
}

// dart의 실행하는 메인 함수
/*
 * void function 이라 아무것도 return 하지 않음
 */
void main() {
  var nico = Player(name: "heera");
  runApp(const App());
}

/*
 *  build Method
 *  UI를 그려주는 flutter method
 * 
 *  모바일 앱들은 모두 scaffold(구조) 가 필요하다.
 */
class App extends StatelessWidget {
  const App({super.key});

  /*
    build Method는 Widget을 return 한다.
  */
  /*
      Color(0xFF181818)
      Color.fromARGB(255,133,133,133)
  */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena,',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // 두개 버튼 사이 멀어짐
                  children: [
                    Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFFFC107),
                        textColor: Colors.black),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6,428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  order: 0,
                ),
                const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin,
                  isInverted: true,
                  order: 1,
                ),
                const CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '99.9',
                  icon: Icons.attach_money,
                  isInverted: false,
                  order: 2,
                ),
                const CurrencyCard(
                  name: 'Rupee',
                  code: 'INR',
                  amount: '28 981',
                  icon: Icons.currency_rupee,
                  isInverted: true,
                  order: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
