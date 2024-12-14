// st 가 stateless 클래스 만드는 단축키

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // button에 필요한 field 선언
  final String text; // 버튼 내용
  final Color bgColor; // 버튼 색상
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  }); // text 색상

  // build() 는 꼭있어야해서 자동 import
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(45)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
