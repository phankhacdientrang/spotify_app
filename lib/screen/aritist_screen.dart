import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_project/screen/play_audio_screen.dart';

class ArtistScreen extends StatelessWidget{
  const ArtistScreen({super.key});

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
             padding: const EdgeInsets.all(10),
             decoration: BoxDecoration(
               color: lightGrey,
               borderRadius: const BorderRadius.only(
                   bottomLeft: Radius.circular(50),
                   bottomRight: Radius.circular(50))
             ),
             child:   Center(
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         decoration:
                         BoxDecoration(color: Colors.grey.withOpacity(0.2), shape: BoxShape.circle),
                         child: IconButton(
                           onPressed: () {},
                           icon: const ImageIcon(
                               AssetImage('assets/images/left_icon.png')),
                         ),
                       ),
                       Text(
                         'Profile',
                         style: titleStyle,
                       ),
                       IconButton(
                           onPressed: () {},
                           icon:
                           const Icon(Icons.more_vert) )
                     ],
                   ),
                   const CircleAvatar(backgroundImage: AssetImage('assets/images/singer_avatar.png'),radius: 50,),
                   const SizedBox(height: 20,),
                   Text('soroushnorozyui@gmail.com',style: mediumStyle.copyWith(fontWeight: FontWeight.normal),),
                   const SizedBox(height: 20,),
                   Text('Soroushnrz',style: titleStyle,),
                   const SizedBox(height: 20,),
                   Row(
                     children: [
                       Expanded(child: ListTile(
                         title: Text('778',style: titleStyle,textAlign: TextAlign.center,),
                       subtitle: Text('Followers',style: mediumStyle.copyWith(fontWeight: FontWeight.normal),textAlign: TextAlign.center,),)),
                       Expanded(child: ListTile(
                         title: Text('1000k',style: titleStyle,textAlign: TextAlign.center,),
                         subtitle: Text('Likes',style: mediumStyle.copyWith(fontWeight: FontWeight.normal),textAlign: TextAlign.center,),)),
                     ],
                   )

                 ],
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(15),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Public playlists'.toUpperCase(),style: titleStyle.copyWith(fontWeight: FontWeight.normal),),
                 const SizedBox(height: 20,),
                 ClipRRect(
                   borderRadius: const BorderRadius.all(Radius.circular(15)),
                   child: ListView(
                     shrinkWrap: true,
                     physics:const NeverScrollableScrollPhysics(),
                     children: [
                       InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => PlayAudioScreen(trackId: '3WxmlTZ85sCYFnuIXmUAEe'),));
                         },
                         child: ListTile(
                           leading: const SizedBox(
                             width: 58,
                             height: 56,
                             child:
                             ClipRRect(
                               borderRadius: BorderRadius.all(Radius.circular(10)),
                                 child: Image(image: AssetImage('assets/images/music_01.png'),fit: BoxFit.cover,)),
                           ),
                           title: Text(
                             'Party Favor',
                             style: titleStyle,overflow: TextOverflow.ellipsis,
                           ),
                           subtitle: Text(
                             'Billie Eilish',
                            style: subStyle.copyWith(fontWeight: FontWeight.normal),
                           ),
                           trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               const Text('5:33'),
                               const SizedBox(
                                 width: 10,
                               ),
                               IconButton(
                                   onPressed: () {},
                                   icon: const Icon(Icons.more_horiz)),
                             ],
                           ),
                         ),
                       ),
                       InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => PlayAudioScreen(trackId: '4Dvkj6JhhA12EX05fT7y2e'),));
                         },
                         child: ListTile(
                           leading: Container(
                             width: 58,
                             height: 56,
                             child:
                             const ClipRRect(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 child: Image(image: AssetImage('assets/images/music_02.png'),fit: BoxFit.cover,)),
                           ),
                           title: Text(
                             'As It Was',
                             style: titleStyle,overflow: TextOverflow.ellipsis,
                           ),
                           subtitle: Text(
                             'Harry Styles',
                             style: subStyle.copyWith(fontWeight: FontWeight.normal),
                           ),
                           trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               const Text('5:33'),
                               const SizedBox(
                                 width: 10,
                               ),
                               IconButton(
                                   onPressed: () {},
                                   icon: const Icon(Icons.more_horiz)),
                             ],
                           ),
                         ),
                       ),
                       InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => PlayAudioScreen(trackId: '4C6Uex2ILwJi9sZXRdmqXp'),));
                         },
                         child: ListTile(
                           leading: Container(
                             width: 58,
                             height: 56,
                             child:
                             const ClipRRect(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 child: Image(image: AssetImage('assets/images/music_03.png'),fit: BoxFit.cover,)),
                           ),
                           title: Text(
                             'Super Freaky Girl',
                             style: titleStyle,overflow: TextOverflow.ellipsis,
                           ),
                           subtitle: Text(
                             'Nicki Minaj',
                            style: subStyle.copyWith(fontWeight: FontWeight.normal),
                           ),
                           trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               const Text('5:33'),
                               const SizedBox(
                                 width: 10,
                               ),
                               IconButton(
                                   onPressed: () {},
                                   icon: const Icon(Icons.more_horiz)),
                             ],
                           ),
                         ),
                       ),
                       InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => PlayAudioScreen(trackId: '3rmo8F54jFF8OgYsqTxm5d'),));
                         },
                         child: ListTile(
                           leading: Container(
                             width: 58,
                             height: 56,
                             child:
                             const ClipRRect(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 child: Image(image: AssetImage('assets/images/music_04.png'),fit: BoxFit.cover,)),
                           ),
                           title: Text(
                             'Bad Habit',
                             style: titleStyle,overflow: TextOverflow.ellipsis,
                           ),
                           subtitle: Text(
                             'Steve Lacy',
                            style: subStyle.copyWith(fontWeight: FontWeight.normal),
                           ),
                           trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               const Text('5:33'),
                               const SizedBox(
                                 width: 10,
                               ),
                               IconButton(
                                   onPressed: () {},
                                   icon: const Icon(Icons.more_horiz)),
                             ],
                           ),
                         ),
                       ),
                       InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => PlayAudioScreen(trackId: '6G6ykEzZ1r7V1qrmNdBOVV'),));
                         },
                         child: ListTile(
                           leading: Container(
                             width: 58,
                             height: 56,
                             child:
                             const ClipRRect(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 child: Image(image: AssetImage('assets/images/music_05.png'),fit: BoxFit.cover,)),
                           ),
                           title: Text(
                             'Planet Her',
                             style: titleStyle,overflow: TextOverflow.ellipsis,
                           ),
                           subtitle: Text(
                             'Doja Cat',
                            style: subStyle.copyWith(fontWeight: FontWeight.normal),
                           ),
                           trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               const Text('5:33'),
                               const SizedBox(
                                 width: 10,
                               ),
                               IconButton(
                                   onPressed: () {},
                                   icon: const Icon(Icons.more_horiz)),
                             ],
                           ),
                         ),
                       ),
                       InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => PlayAudioScreen(trackId: '5zFglKYiknIxks8geR8rcL'),));
                         },
                         child: ListTile(
                           leading: Container(
                             width: 58,
                             height: 56,
                             child:
                             const ClipRRect(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 child: Image(image: AssetImage('assets/images/music_06.png'),fit: BoxFit.cover,)),
                           ),
                           title: Text(
                             'Megan Thee Stallion',
                             style: titleStyle,overflow: TextOverflow.ellipsis,
                           ),
                           subtitle: Text(
                             'Sweetest Pie',
                            style: subStyle.copyWith(fontWeight: FontWeight.normal),
                           ),
                           trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               const Text('5:33'),
                               const SizedBox(
                                 width: 10,
                               ),
                               IconButton(
                                   onPressed: () {},
                                   icon: const Icon(Icons.more_horiz)),
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
                 )
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

