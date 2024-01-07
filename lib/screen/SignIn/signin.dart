import 'package:flutter/material.dart';
import 'package:spotify_project/screen/Enjoy/enjoy.dart';
import 'package:spotify_project/screen/Register/register.dart';
import 'package:spotify_project/screen/option_screen.dart';

void main() {
  runApp(const SignIn());
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key});

  @override
  Widget build(BuildContext context) {
    return const SignInPage();
  }
}

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController usernameController = TextEditingController();
  bool showPlaceholder = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.fromLTRB(27, 36, 28, 75),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 5, 110),
                    width: 108,
                    height: 33,
                    child: Image(
                      image: AssetImage('assets/spotify.png'),
                      width: 108,
                      height: 33,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 4, 5),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0xfff2f2f2),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        height: 1.2575,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 11, 38),
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffe1e1e1),
                            ),
                            children: [
                          TextSpan(
                            text: 'If You Need Any Support ',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 1.2575,
                              color: Color(0xffe1e1e1),
                            ),
                          ),
                          TextSpan(
                              text: 'Click Here',
                              style: TextStyle(
                                  color: Color(0xff37b332),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575))
                        ])),
                  ),
                  Row(
                    children: [
                      Flexible(
                          child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Enter Username Or Email',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(43),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(43))),
                      ))
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Flexible(
                          child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(43),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(43))),
                      ))
                    ],
                  ),
                  Container(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const SigninForm()));
                            },
                            child: Text(
                              "Recovery Password",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xff42c73b),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0a000000),
                          offset: Offset(0, 20),
                          blurRadius: 25,
                        ),
                      ],
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OptionScreen(),
                              ));
                        },
                        child: Text(
                          'Sign In',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            height: 1.2575,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          height: 1,
                          color: Colors.grey,
                        ),
                        Container(
                          child: Text(
                            'Or',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 150,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Image(
                        image: AssetImage('assets/google.png'),
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Image(
                        image: AssetImage('assets/apple.png'),
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not A Member ? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Register(),
                                ));
                          },
                          child: Text(
                            "Register Now",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff278ce8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ])));
  }
}
