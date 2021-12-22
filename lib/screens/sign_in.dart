import 'package:app/screens/news_feed.dart';
import 'package:app/screens/sign_up.dart';
import 'package:app/widgets/colors.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  FocusNode myFocusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors().bgColor,
      resizeToAvoidBottomInset: true,
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                // focusNode: myFocusNode,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide:
                        BorderSide(color: MyColors().textColor, width: 1),
                  ),
                  hintText: 'Please enter your email',
                  hintStyle: TextStyle(color: MyColors().placeholderColor),
                  // helperText: 'Keep it short, this is just a demo.',
                  helperStyle: TextStyle(color: MyColors().placeholderColor),
                  labelText: 'Enter your email',
                  labelStyle: TextStyle(color: MyColors().textColor),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // focusNode: myFocusNode,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide:
                        BorderSide(color: MyColors().textColor, width: 1),
                  ),
                  hintText: 'Please enter the correct password',
                  hintStyle: TextStyle(color: MyColors().placeholderColor),
                  // helperText: 'Keep it short, this is just a demo.',
                  helperStyle: TextStyle(color: MyColors().placeholderColor),
                  labelText: 'Enter password',
                  labelStyle: TextStyle(color: MyColors().textColor),
                ),
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewsFeed()),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 18,
                        color: MyColors().textColor,
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      backgroundColor:
                          MaterialStateProperty.all(MyColors().primaryColor),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do you wanna join?',
                    style: TextStyle(
                      fontSize: 14,
                      color: MyColors().textColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text(
                      "Sign up now",
                      style: TextStyle(
                        fontSize: 14,
                        color: MyColors().primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
