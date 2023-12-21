import 'package:flutter/material.dart';
import 'package:spotify_project/screen/aritist_detail_screen.dart';
import 'package:spotify_project/screen/play_audio_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;
  bool isSearch = false;
  void setSelected(int value) {
    setState(() {
      selected = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    var fullW = MediaQuery.of(context).size.width;
    var fullH = MediaQuery.of(context).size.height;
    Color bgColor = Theme.of(context).colorScheme.onBackground;
    Color lightGrey = Theme.of(context).colorScheme.onSecondaryContainer;
    Color greenColor = Theme.of(context).colorScheme.onSecondary;
    TextStyle titleStyle = Theme.of(context).textTheme.headline1!;
    TextStyle mediumStyle = Theme.of(context).textTheme.headline4!;
    TextStyle subStyle = Theme.of(context).textTheme.subtitle1!;

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 190,
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                   !isSearch ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isSearch = true;
                              });
                            },
                            icon: const ImageIcon(
                                AssetImage('assets/images/search_icon.png'))),
                        const Image(
                            image:
                                AssetImage('assets/images/logo_spotify.png')),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.more_vert))
                      ],
                    ) : TextField(
                     style: mediumStyle,
                     decoration: InputDecoration(
                     hintText: 'Search...',
                       hintStyle: mediumStyle,
                       enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: greenColor,width: 1),
                       borderRadius: const BorderRadius.all(Radius.circular(15))),
                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: greenColor,width: 1),
                           borderRadius: const BorderRadius.all(Radius.circular(15))),
                       prefixIcon: IconButton(
                           onPressed: () {},
                           icon: const ImageIcon(
                               AssetImage('assets/images/search_icon.png'))),
                       suffixIcon: IconButton(onPressed: (){
                         setState(() {
                           isSearch = false;
                         });
                       },icon: const Icon(Icons.cancel),)
                   ),),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Stack(children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          width: fullW,
                          height: 118,
                          constraints: const BoxConstraints(minHeight: 118),
                          decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'New album',
                                style: subStyle,
                              ),
                              SizedBox(
                                  width: fullW / 2.5,
                                  child: Text(
                                    'Happier Than Ever',
                                    style: titleStyle,
                                    softWrap: true,
                                  )),
                              InkWell(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ArtistDetailScreen(),));},
                                child: Text(
                                  'Billie Eilish',
                                  style: mediumStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                     const Positioned(
                        bottom: -5,
                        right: 20,
                        child: SizedBox(
                            width: 170,
                            child: Image(
                                image:
                                    AssetImage('assets/images/singer_03.png'))))
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TextButton(
                          onPressed: () {
                            setSelected(0);
                          },
                          child: Text('News',
                              style: titleStyle.copyWith(
                                  color: 0 == selected
                                      ? Colors.white
                                      : lightGrey))),
                      TextButton(
                          onPressed: () {
                            setSelected(1);
                          },
                          child: Text('Video',
                              style: titleStyle.copyWith(
                                  color: 1 == selected
                                      ? Colors.white
                                      : lightGrey))),
                      TextButton(
                          onPressed: () {
                            setSelected(2);
                          },
                          child: Text('Artists',
                              style: titleStyle.copyWith(
                                  color: 2 == selected
                                      ? Colors.white
                                      : lightGrey))),
                      TextButton(
                          onPressed: () {
                            setSelected(3);
                          },
                          child: Text('Podcast',
                              style: titleStyle.copyWith(
                                  color: 3 == selected
                                      ? Colors.white
                                      : lightGrey))),
                      TextButton(
                          onPressed: () {
                            setSelected(4);
                          },
                          child: Text('Podcast',
                              style: titleStyle.copyWith(
                                  color: 4 == selected
                                      ? Colors.white
                                      : lightGrey))),
                      TextButton(
                          onPressed: () {
                            setSelected(5);
                          },
                          child: Text('Podcast',
                              style: titleStyle.copyWith(
                                  color: 5 == selected
                                      ? Colors.white
                                      : lightGrey))),
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            child: Stack(
                              children: [
                                const ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/singer_01.png'),width: 147, height: 185,),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: lightGrey,
                                          shape: BoxShape.circle),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayAudioScreen(trackId: '2Fxmhks0bxGSBdJ92vM42m'),));
                                        },
                                        icon: const ImageIcon(AssetImage(
                                            'assets/images/play_icon.png')),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Text(
                            "Bad Guy",
                            style: titleStyle,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ArtistDetailScreen(),));},
                            child: Text(
                              "Billie Eilish",
                              style: mediumStyle.copyWith(
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            child: Stack(
                              children: [
                                const ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/singer_02.png'),width: 147, height: 185,),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: lightGrey,
                                          shape: BoxShape.circle),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayAudioScreen(trackId: '0RdUX4WE0fO30VnlUbDVL6'),));
                                        },
                                        icon: const ImageIcon(AssetImage(
                                            'assets/images/play_icon.png')),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Text(
                            "Scorpion",
                            style: titleStyle,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Drake",
                            style: mediumStyle.copyWith(
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            child: Stack(
                              children: [
                                const ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  child:  Image(
                                      image: AssetImage(
                                          'assets/images/music_07.jpg'),width: 147, height: 185,fit: BoxFit.cover),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: lightGrey,
                                          shape: BoxShape.circle),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayAudioScreen(trackId: '2LKOHdMsL0K9KwcPRlJK2v'),));
                                        },
                                        icon: const ImageIcon(AssetImage(
                                            'assets/images/play_icon.png')),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Text(
                            "After Dark",
                            style: titleStyle,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Mr.Kitty",
                            style: mediumStyle.copyWith(
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            child: Stack(
                              children: [
                                const ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/music_08.jpg'),width: 147, height: 185,fit: BoxFit.cover),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: lightGrey,
                                          shape: BoxShape.circle),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayAudioScreen(trackId: '3JvKfv6T31zO0ini8iNItO'),));
                                        },
                                        icon: const ImageIcon(AssetImage(
                                            'assets/images/play_icon.png')),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Text(
                            "Another Love",
                            style: titleStyle,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Tome Odell",
                            style: mediumStyle.copyWith(
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            child: Stack(
                              children: [
                                const ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/music_10.jpg'),width: 147, height: 185,fit: BoxFit.cover),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: lightGrey,
                                          shape: BoxShape.circle),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayAudioScreen(trackId: '4AsvGVDWs16fqIiIdDzyvX'),));
                                        },
                                        icon: const ImageIcon(AssetImage(
                                            'assets/images/play_icon.png')),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Text(
                            "Happy New Year",
                            style: titleStyle,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "ABBA",
                            style: mediumStyle.copyWith(
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            child: Stack(
                              children: [
                                const ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/music_09.jpg'),width: 147, height: 185,fit: BoxFit.cover),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: lightGrey,
                                          shape: BoxShape.circle),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayAudioScreen(trackId: '6xXCn7H2Yl8SDD6jxo5SpN'),));
                                        },
                                        icon: const ImageIcon(AssetImage(
                                            'assets/images/play_icon.png')),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Text(
                            "You & Me",
                            style: titleStyle,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Jennie",
                            style: mediumStyle.copyWith(
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  )),
              ListTile(
                leading: Text(
                  'Playlist',
                  style: titleStyle,
                ),
                trailing: Text(
                  'See More',
                  style: mediumStyle,
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: lightGrey, shape: BoxShape.circle),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayAudioScreen(trackId: '4RVwu0g32PAqgUiJoXsdF8'),));
                        },
                        icon: const ImageIcon(
                            AssetImage('assets/images/play_icon.png')),
                      ),
                    ),
                    title: Text(
                      'Happier Than Ever',
                      style: titleStyle,
                    ),
                    subtitle: InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ArtistDetailScreen(),));},
                      child: Text(
                        'Billie Eilish',
                        style: subStyle,
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('5:16'),
                        const SizedBox(
                          width: 50,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                                AssetImage('assets/images/heart_icon.png'))),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: lightGrey, shape: BoxShape.circle),
                      child: IconButton(
                         onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayAudioScreen(trackId: '2sOj9vyd6yiss9W1IK6chU'),));
                        },
                        icon: const ImageIcon(
                            AssetImage('assets/images/play_icon.png')),
                      ),
                    ),
                    title: Text(
                      'God Did',
                      style: titleStyle,
                    ),
                    subtitle: Text(
                      'DJ Khaled',
                      style: subStyle,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('8:23'),
                        const SizedBox(
                          width: 50,
                        ),
                        IconButton(
                             onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayAudioScreen(trackId: '4RVwu0g32PAqgUiJoXsdF8'),));
                        },
                            icon: const ImageIcon(
                                AssetImage('assets/images/heart_icon.png'))),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: lightGrey, shape: BoxShape.circle),
                      child: IconButton(
                         onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayAudioScreen(trackId: '4C6Uex2ILwJi9sZXRdmqXp'),));
                        },
                        icon: const ImageIcon(
                            AssetImage('assets/images/play_icon.png')),
                      ),
                    ),
                    title: Text(
                      'Super Freaky Girl',
                      style: titleStyle,
                    ),
                    subtitle: Text(
                      'Nicki Minaj',
                      style: subStyle,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('2:52'),
                        const SizedBox(
                          width: 50,
                        ),
                        IconButton(
                             onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayAudioScreen(trackId: '4RVwu0g32PAqgUiJoXsdF8'),));
                        },
                            icon: const ImageIcon(
                                AssetImage('assets/images/heart_icon.png'))),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: lightGrey, shape: BoxShape.circle),
                      child: IconButton(
                         onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayAudioScreen(trackId: '1WbBAh3Ty4VjWy9kkGKo9h'),));
                        },
                        icon: const ImageIcon(
                            AssetImage('assets/images/play_icon.png')),
                      ),
                    ),
                    title: Text(
                      'Planet Her',
                      style: titleStyle,
                    ),
                    subtitle: Text(
                      'Doja Cat',
                      style: subStyle,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('2:52'),
                        const SizedBox(
                          width: 50,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                                AssetImage('assets/images/heart_icon.png'))),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
