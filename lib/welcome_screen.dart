import 'package:flutter/material.dart';

import 'constants.dart';
import 'signin_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildColumn(context),
    );
  }

  Column buildColumn(BuildContext context) {
    return Column(
      children: [
        backgroundImage(),
        contentUnderBackgroundImage(context),
      ],
    );
  }

  Expanded contentUnderBackgroundImage(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          titleOfWelcomeScreen(context),
          goToSignInButtom(context),
        ],
      ),
    );
  }

  GestureDetector goToSignInButtom(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return SingInScreen();
            },
          ),
        );
      },
      child: FittedBox(
        child: Container(
          margin: EdgeInsets.only(bottom: 25),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 26),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: kPrimaryColor,
          ),
          child: Row(
            children: [
              Text(
                "START LEARNING",
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: Colors.black),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.arrow_right_alt,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }

  RichText titleOfWelcomeScreen(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "BAKING LESSONS\n",
            style: Theme.of(context).textTheme.display1,
          ),
          TextSpan(
            text: "MASTER THE ART OF BAKING",
            style: Theme.of(context).textTheme.headline,
          ),
        ],
      ),
    );
  }

  Expanded backgroundImage() {
    return Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/person.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
