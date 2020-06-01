import 'package:book_app/widgets/reading_list_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/main_page_bg.png'),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline5,
                  children: [
                    TextSpan(
                      text: 'What are you \nreading',
                    ),
                    TextSpan(
                      text: ' today?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ReadingListCard(
                    image: 'assets/book-1.png',
                    title: 'Crushing & Influence',
                    author: 'Gary Venchuk',
                    rating: 4.8,
                  ),
                  ReadingListCard(
                    image: 'assets/book-2.png',
                    title: 'Top Ten Business Hacks',
                    author: 'Herman Joel',
                    rating: 4.7,
                  ),
                  SizedBox(width: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
