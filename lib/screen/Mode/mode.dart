import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const Mode());
}
class Mode extends StatelessWidget {
  const Mode({Key? key}) ;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mode',
      debugShowCheckedModeBanner: false,
      home: ModePage(),
    );
  }
}
class ModePage extends StatefulWidget{
  const ModePage({Key? key}) : super(key:key);
  
  @override
  State<ModePage> createState() => _ModePageState();
    
  }
  class _ModePageState extends State<ModePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(33, 37, 28, 69),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xb2000000),
          image: DecorationImage(
            image: AssetImage('assets/images/anh2.png'),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 5, 335),
              width: 190,
              height: 50,
              child: Image(image: AssetImage('assets/images/spotify.png'),
               width: 190,
              height: 50,
             ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(47, 0, 55, 69),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:EdgeInsets.fromLTRB(0, 0, 8, 33),
                    child: Text('Choose Mode',
                    style: TextStyle(color: Colors.white, 
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                     height: 1,
                    ),
                    ),
                    ),
                    ClipOval(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 40,
                        sigmaY: 40,
                      ),
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 6.5),
                        padding: const EdgeInsets.fromLTRB(21.33, 23.33, 22.33, 20.33),
                        decoration: BoxDecoration(
                          color: Color(0x02ffffff),
                          borderRadius: BorderRadius.circular(36.5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(43),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: Image(
                                  image: AssetImage('assets/images/sun.png'),
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 1, 75, 0),
                          width: 80,
                          height: 80,
                          child: Image(
                            image: AssetImage('assets/images/dark.png'),
                            width: 80,
                            height: 80,
                          ),
                        ),
                        ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 40,
                              sigmaY: 40,
                            ),
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 6.5),
                              padding: const EdgeInsets.fromLTRB(21.33, 23.33, 22.33, 20.33),
                              decoration: BoxDecoration(
                                color: Color(0x02ffffff),
                                borderRadius: BorderRadius.circular(36.5),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(43),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: Image(
                                        image: AssetImage('assets/images/sun.png'),
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}