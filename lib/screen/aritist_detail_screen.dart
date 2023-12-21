
import 'package:flutter/material.dart';
import 'package:spotify_project/screen/play_audio_screen.dart';

class ArtistDetailScreen extends StatelessWidget {
  const ArtistDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = Theme.of(context).textTheme.headline1!;
    TextStyle mediumStyle = Theme.of(context).textTheme.headline3!;
    TextStyle subStyle = Theme.of(context).textTheme.subtitle1!;
    Color greenColor = Theme.of(context).colorScheme.onSecondary!;
    Color bgColor = Theme.of(context).colorScheme.onBackground!;
    Color lightGrey = Theme.of(context).colorScheme.onSecondaryContainer!;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 27, 27),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  constraints: const BoxConstraints(minHeight: 240),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: lightGrey,
                      image: const DecorationImage(
                          image: AssetImage('assets/images/singer_05.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                shape: BoxShape.circle),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const ImageIcon(
                                  AssetImage('assets/images/left_icon.png')),
                            ),
                          ),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.more_vert))
                        ],
                      ))),
              SizedBox(
                height: 15,
              ),
             Center(
               child: Column(
                 children: [
                   Text(
                     'Billie Eilish',
                     style: titleStyle.copyWith(fontWeight: FontWeight.normal),
                   ),
                   const SizedBox(
                     height: 5,
                   ),
                   Text(
                     ' 2 album , 67 track',
                     style: mediumStyle.copyWith(
                         fontWeight: FontWeight.normal, color: Colors.white60),
                   ),
                   const SizedBox(
                     height: 5,
                   ),
                   Text(
                     ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis adipiscing vestibulum orci enim, nascetur vitae ',
                     style: mediumStyle.copyWith(
                         fontWeight: FontWeight.normal, color: Colors.white60),
                     textAlign: TextAlign.center,
                   )
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     'Albums',
                     style: titleStyle,
                   ),
                   Container(
                     margin: const EdgeInsets.only(top: 15),
                     height: 190,
                     child: ListView(
                       shrinkWrap: true,
                       scrollDirection: Axis.horizontal,
                       children: [
                         Column(
                           children: [
                             const ClipRRect(
                                 borderRadius:
                                 BorderRadius.all(Radius.circular(25)),
                                 child: Image(
                                   image: AssetImage(
                                     'assets/images/abum_01.png',
                                   ),
                                   width: 140,
                                   height: 135,
                                   fit: BoxFit.fill,
                                 )),
                             const SizedBox(
                               height: 10,
                             ),
                             Text(
                               'Happier Than Ever',
                               style: mediumStyle,
                             )
                           ],
                         ),
                         const SizedBox(
                           width: 10,
                         ),
                         Column(
                           children: [
                             const ClipRRect(
                                 borderRadius:
                                 BorderRadius.all(Radius.circular(25)),
                                 child: Image(
                                   image: AssetImage(
                                     'assets/images/singer_05.jpg',
                                   ),
                                   width: 140,
                                   height: 135,
                                   fit: BoxFit.fill,
                                 )),
                             const SizedBox(
                               height: 10,
                             ),
                             Text(
                               'Happier Than Ever',
                               style: mediumStyle,
                             )
                           ],
                         ),
                         const SizedBox(
                           width: 10,
                         ),
                         Column(
                           children: [
                             const ClipRRect(
                                 borderRadius:
                                 BorderRadius.all(Radius.circular(25)),
                                 child: Image(
                                   image: AssetImage(
                                     'assets/images/singer_05.jpg',
                                   ),
                                   width: 140,
                                   height: 135,
                                   fit: BoxFit.fill,
                                 )),
                             const SizedBox(
                               height: 10,
                             ),
                             Text(
                               'Happier Than Ever',
                               style: mediumStyle,
                             )
                           ],
                         ),
                         const SizedBox(
                           width: 10,
                         ),
                         Column(
                           children: [
                             const ClipRRect(
                                 borderRadius:
                                 BorderRadius.all(Radius.circular(25)),
                                 child: Image(
                                   image: AssetImage(
                                     'assets/images/singer_05.jpg',
                                   ),
                                   width: 140,
                                   height: 135,
                                   fit: BoxFit.fill,
                                 )),
                             const SizedBox(
                               height: 10,
                             ),
                             Text(
                               'Happier Than Ever',
                               style: mediumStyle,
                             )
                           ],
                         ),
                         const SizedBox(
                           width: 10,
                         ),
                         Column(
                           children: [
                             const ClipRRect(
                                 borderRadius:
                                 BorderRadius.all(Radius.circular(25)),
                                 child: Image(
                                   image: AssetImage(
                                     'assets/images/singer_05.jpg',
                                   ),
                                   width: 140,
                                   height: 135,
                                   fit: BoxFit.fill,
                                 )),
                             const SizedBox(
                               height: 10,
                             ),
                             Text(
                               'Happier Than Ever',
                               style: mediumStyle,
                             )
                           ],
                         ),
                       ],
                     ),
                   ),
                   const SizedBox(
                     height: 10,
                   ),
                   Text(
                     'Songs',
                     style: titleStyle,
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
                     subtitle: Text(
                       'Billie Eilish',
                       style: subStyle,
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
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
