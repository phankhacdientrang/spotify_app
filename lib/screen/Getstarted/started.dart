import 'package:flutter/material.dart';
import 'package:spotify_project/screen/Register/register.dart';

void main() {
  runApp(const Started());
}

class Started extends StatelessWidget {
  const Started({Key? key});

  @override
  Widget build(BuildContext context) {
    return const StartedPage();
  }
}

class StartedPage extends StatefulWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.fromLTRB(33, 37, 28, 69),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xb2000000),
        image: DecorationImage(
            image: AssetImage('assets/anh1.png'), fit: BoxFit.cover),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 5, 335),
          width: 190,
          height: 50,
          child: Image(
            image: AssetImage('assets/spotify.png'),
            width: 190,
            height: 50,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 20, 23),
          child: Text(
            'Enjoy Listening To Music',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
              height: 1,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 4, 38),
          constraints: BoxConstraints(
            maxWidth: 290,
          ),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 92,
          decoration: BoxDecoration(
            color: Color(0xff42c73b),
            borderRadius: BorderRadius.circular(25),
          ),
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Register(),
                    ));
              },
              child: SizedBox(
                  width: 2000,
                  height: 1.2575,
                  child: Center(
                      child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )))),
        ),
      ]),
    ));
  }
}
