import 'package:flutter/material.dart';

class PhotoGallery extends StatefulWidget {
  const PhotoGallery({super.key});

  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
   List images = [
    "assets/images/img_rectangle7_100x140.png",
    "assets/images/img_rectangle8_100x140.png",
    "assets/images/img_rectangle10_140x182.png",
    "assets/images/img_rectangle11.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Gallery Hotel Photo"),
        actions: [
         
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1,
          crossAxisCount: 2),
      itemCount: images.length,
       itemBuilder: (context, index) {
         return Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.cover)
            ),
           ),
         );
       },),
    );
  }
}