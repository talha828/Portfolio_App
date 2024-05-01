
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:talhaiqbal/constant/constant.dart';

class QuotesCard extends StatelessWidget {
  const QuotesCard({
    super.key,
    required this.width,
    required this.quotes,
    required this.subTitle,
  });

  final double width;
  final String quotes;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: width * 0.06,horizontal: width * 0.04),
      decoration: BoxDecoration(
          color: themeColor, borderRadius: BorderRadius.circular(25)),
      height: 0.6 * width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.08),
            child: SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: TextStyle(
                  fontSize: width * 0.05,
                ),
                child: AnimatedTextKit(
                  repeatForever: false,
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TypewriterAnimatedText(quotes,textAlign: TextAlign.center,
                        speed: const Duration(milliseconds: 150)),
                  ],
                ),
              ),
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(color: Colors.white, fontSize: width * 0.05),
          ),
        ],
      ),
    );
  }
}
