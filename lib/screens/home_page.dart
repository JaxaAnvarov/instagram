import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:instagram/componets/color.dart';
import 'package:instagram/componets/icons.dart';
import 'package:instagram/componets/text.dart';
import 'package:instagram/models/posts_api.dart';
import 'package:instagram/models/story.dart';
import 'package:instagram/widgets/items.dart';
import 'package:instagram/widgets/sturyes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: getBody());
  }

  AppBar _appBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: iconColor),
      backgroundColor: colorTransparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: cameraIcon,
      ),
      title: Container(
        margin: const EdgeInsets.only(top: 10.0),
        height: 75.0,
        width: 110.0,
        child: Image.asset(
          'assets/images/i.png',
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: message,
        ),
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 15, bottom: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: Stack(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(profile),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 19,
                                height: 19,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: white),
                                child: const Icon(
                                  Icons.add_circle,
                                  color: buttonFollowColor,
                                  size: 19,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 70,
                        child: Text(
                          name,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: black),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: List.generate(
                    stories.length,
                    (index) {
                      return StoryItem(
                        img: stories[index]['img'],
                        name: stories[index]['name'],
                        icon: stories[index]['icon'],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: white.withOpacity(0.3),
          ),
          Column(
            children: List.generate(
              posts.length,
              (index) {
                return PostItem(
                  postImg: posts[index]['postImg'],
                  profileImg: posts[index]['profileImg'],
                  name: posts[index]['name'],
                  caption: posts[index]['caption'],
                  isLoved: posts[index]['isLoved'],
                  viewCount: posts[index]['commentCount'],
                  likedBy: posts[index]['likedBy'],
                  dayAgo: posts[index]['timeAgo'],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
