import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:welcome_login_screen/constants.dart';
import 'presentation/custom_icons_icons.dart';

class SingInScreen extends StatefulWidget {
  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          backgroundImage(),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("SIGN IN",
                          style: Theme.of(context).textTheme.display1),
                      Text(
                        "SIGN UP",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child:
                              Icon(Icons.alternate_email, color: kPrimaryColor),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email Address",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(Icons.lock, color: kPrimaryColor),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white.withOpacity(0.15),
                          ),
                        ),
                        child: Icon(
                          MyFlutterApp.facebook,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white.withOpacity(0.15),
                          ),
                        ),
                        child: Icon(
                          MyFlutterApp.twitter,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white.withOpacity(0.15),
                          ),
                          shape: BoxShape.circle,
                          color: kPrimaryColor,
                        ),
                        child: Icon(
                         Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded backgroundImage() {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/person.jpeg"),
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter),
        ),
      ),
    );
  }
}
