import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget{
   final String? songImage;
  const ImageWidget({super.key, this.songImage});
  @override
  Widget build(BuildContext context) {
    return
    Container(
      constraints: BoxConstraints(
        minHeight: 300
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: (songImage != null && songImage!= '') ?  Image(image:  NetworkImage(songImage ?? ''),)
            :  const Image(image: AssetImage( 'assets/images/singer_04.jpg'),)
      ),
    );
  }

}