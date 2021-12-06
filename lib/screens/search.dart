import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/models/list_images.dart';

class InstagramSearchGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 62.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), ),
                    hintText: 'Search',
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search))
                  ),
                ),
              ),
            ),
            Container(
              height: 600.0,
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 3,
                itemCount: imageList.length,
                itemBuilder: (context, index) => ImageCard(
                  imageData: imageList[index],
                ),
                staggeredTileBuilder: (index) => StaggeredTile.count(
                    (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1),
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  ImageCard({this.imageData});

  final ImageData? imageData;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.network(imageData!.imageUrl.toString(), fit: BoxFit.cover),
    );
  }
}
