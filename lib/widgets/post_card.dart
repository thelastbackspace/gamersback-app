import 'package:app/widgets/colors.dart';
import 'package:flutter/material.dart';
import '../helper/demo_values.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _StoryList(),
          Divider(
            color: Colors.white10,
          ),
          _Posts(),
          // _PostImage(),
        ],
      ),
    );
  }
}

class _StoryList extends StatelessWidget {
  const _StoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          8,
          (index) => Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color.fromARGB(221, 213, 17, 17),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage(DemoValues.userImage),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  DemoValues.userFullName,
                  style: TextStyle(
                    fontSize: 12,
                    color: MyColors().textColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Posts extends StatelessWidget {
  const _Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          8,
          (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _PostHeader(),
                  _PostImage(),
                  _PostFooter(),
                ],
              )),
    );
  }
}

class _PostHeader extends StatelessWidget {
  const _PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 16,
            backgroundColor: MyColors().primaryColor,
            child: CircleAvatar(
              radius: 14,
              backgroundImage: NetworkImage(DemoValues.userImage),
            ),
          ),
        ),
        Text(
          DemoValues.userFullName,
          style: TextStyle(
            fontSize: 12,
            color: MyColors().textColor,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
          color: MyColors().textColor,
        )
      ],
    );
  }
}

class _PostImage extends StatelessWidget {
  const _PostImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(DemoValues.postImage);
  }
}

class _PostFooter extends StatelessWidget {
  const _PostFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
              color: MyColors().textColor,
            ),
            IconButton(
              icon: Icon(Icons.chat_bubble_outline),
              onPressed: () {},
              color: MyColors().textColor,
            ),
            IconButton(
              icon: Icon(Icons.send_outlined),
              onPressed: () {},
              color: MyColors().textColor,
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.bookmark_outline),
              onPressed: () {},
              color: MyColors().textColor,
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(color: MyColors().textColor),
                  children: [
                    TextSpan(text: "Liked by "),
                    TextSpan(
                      text: DemoValues.userFullName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: MyColors().textColor),
                  children: [
                    TextSpan(
                      text: DemoValues.userFullName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: DemoValues.postSummary,
                    )
                  ],
                ),
              ),
              Text(
                "Viewl all 5 comments",
                style: TextStyle(color: MyColors().textColor),
              )
            ],
          ),
        )
      ],
    );
  }
}
