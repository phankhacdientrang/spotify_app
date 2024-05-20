import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const Enjoy());
}
class Enjoy extends StatelessWidget {
  const Enjoy({Key? key}) ;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Enjoy ',
      debugShowCheckedModeBanner: false,
      home: EnjoyPage(),
    );
  }
}
class EnjoyPage extends StatefulWidget{
  const EnjoyPage({Key? key}) : super(key:key);
  
  @override
  State<EnjoyPage> createState() => _EnjoyPageState();
    
  }
  class _EnjoyPageState extends State<EnjoyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(33, 37, 28, 69),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xb2000000),
          image: DecorationImage(
            image: AssetImage('assets/images/anh1.png'),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(3, 0, 0, 55),
              width: 235,
              height: 175,
              child: Image(image: AssetImage('assets/images/spotify.png'),
               width: 235,
              height: 100,
            ),
            ),
            Container(              
              margin: EdgeInsets.fromLTRB(5, 0, 9, 23),
              child: Text(
                'Enjoy listening to music',
                style: TextStyle(
                color: Colors.white, 
                fontSize: 26, 
                fontWeight: FontWeight.w700 ,
                
                ),
              )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 16, 50),
              constraints: BoxConstraints(maxWidth: 278,
              ),
              child: Text('Spotify is a proprietary Swedish audio streaming and media services provider',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 1.2575,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 105, 100),
                  width: 147,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff42c73b),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x0a000000),
                        offset: Offset(0, 20),
                        blurRadius: 25,
                      )
                    ],
                    ),
                    child: Center(
                      child: Text(
                        'Register',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color:  Color(0xffffffff),
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          height: 1.2575
                        ),
                      ),
                      ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end, 
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        width: 147,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xff42c73b),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x0a000000),
                              offset: Offset(0, 20),
                              blurRadius: 25,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Sign in',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              height: 1.2575,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )

              ],
              
            ),
            
               
          ],
        ),
      ),
    );
  }
}
  
  