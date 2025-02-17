import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  const ImageSlider({super.key, required this.image,required this.onChange});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PageView.builder(
        onPageChanged: onChange,
          itemBuilder: (context,index){
        return Hero(
          tag: image,
            child: Image.asset(image)
        );


      }
      ),
    );




  }


}