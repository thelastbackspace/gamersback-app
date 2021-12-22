import 'package:app/widgets/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/post_card.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors().bgColor,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text("Gamersback"),
        ),
        backgroundColor: MyColors().bgColor,
        elevation: 0,
        iconTheme: IconThemeData(color: MyColors().textColor),
      ),
      body: PostCard(),
    );
  }
}
