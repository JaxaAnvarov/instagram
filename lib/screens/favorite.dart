import 'package:flutter/material.dart';
import 'package:instagram/models/posts_api.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Activity",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15.0),
            Container(
              margin: const EdgeInsets.only(right: 300.0),
              child: const Text(
                "New",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: 210.0,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.indigo,
                        radius: 30.0,
                      ),
                    ),
                    title: Text(posts[index]['name']),
                    subtitle: Text("Like  ❤️"),
                    trailing: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                            Colors.indigo,
                            Colors.pink,
                          ])),
                    ),
                  );
                },
              ),
            ),
             const SizedBox(height: 15.0),
            Container(
              margin: const EdgeInsets.only(right: 300.0, bottom: 10.0),
              child: const Text(
                "Today",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: 280.0,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const Padding(
                      padding:  EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.indigo,
                        radius: 30.0,
                      ),
                    ),
                    title: Text(posts[index + 3]['name']),
                    subtitle: const  Text("Like  ❤️"),
                    trailing: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration:  const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://sourse/unsplash.com/random/1'
                          )
                        ),
                        gradient:   LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.indigo,
                            Colors.pink,
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
