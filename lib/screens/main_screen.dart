import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:talhaiqbal/constant/constant.dart';
import 'package:talhaiqbal/widget/quote_cards_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CarouselSlider(items: quotesList.map((e) => QuotesCard(width: width, quotes: e.quote, subTitle: e.author)).toList(), options: CarouselOptions(height: width * 0.7),),


          ],
        ),
      ),
    );
  }
}
