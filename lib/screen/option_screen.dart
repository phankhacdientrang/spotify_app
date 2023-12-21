import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_project/screen/aritist_detail_screen.dart';
import 'package:spotify_project/screen/aritist_screen.dart';
import 'package:spotify_project/screen/home_screen.dart';

class OptionScreen extends StatefulWidget{
  const OptionScreen({super.key});

  @override
  State<StatefulWidget> createState() {
   return _OptionScreenState();
  }

}
class _OptionScreenState extends State<OptionScreen>{
  List<Widget> listScreenWidget = [
    const HomeScreen(),
    const ArtistScreen(),
    const ArtistDetailScreen(),
    const ArtistScreen()
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: listScreenWidget[_selectedIndex] ,
     bottomNavigationBar: BottomNavigationBar(
       showSelectedLabels: false,
       showUnselectedLabels: false,
       selectedIconTheme: IconThemeData(color: Theme.of(context).colorScheme.onSecondary),
       items: const <BottomNavigationBarItem>[
         BottomNavigationBarItem(
           icon: ImageIcon(AssetImage('assets/images/home_icon.png')),
           label: 'Home',
         ),
         BottomNavigationBarItem(
           icon: ImageIcon(AssetImage('assets/images/discover_icon.png')),
           label: 'Business',
         ),
         BottomNavigationBarItem(
           icon: ImageIcon(AssetImage('assets/images/heart_icon.png')),
           label: 'School',
         ),
         BottomNavigationBarItem(
           icon: ImageIcon(AssetImage('assets/images/user_icon.png')),
           label: 'School',
         ),
       ],
       currentIndex: _selectedIndex,
       selectedItemColor: Colors.amber[800],
       onTap: (value){
         setState(() {
           _selectedIndex = value;
         });
       },
     ),
   );
  }

}