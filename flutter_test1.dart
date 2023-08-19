import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Padding(
          padding: EdgeInsets.all(50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.fromLTRB(50, 20, 20, 0),
                  height: 200,
                  width: 220,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image.network(
                        'https://www.journalduweb.org/wp-content/uploads/2023/02/intelligence-artificielle-midjourney-860x484.jpg'),
                  ),
                ),
                Container(
                  //padding: EdgeInsets.all(0),
                  margin: EdgeInsets.fromLTRB(50, 0, 20, 0),
                  child: Text(
                    'YOUSIF HAFIZ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('    joehafiz0118'),
                      Icon(Icons.app_registration_rounded),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text('\n10K Followers\n'),
                      Container(
                        child: Center(
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        width: 120,
                        height: 40,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Text(
                        'yousif hafiz is a creator minimalistic x bold graphics and digital artwork\n',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'Artist/ Creative Director by Day #NFT minting@ with FND night',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook),
                      Icon(Icons.access_alarm_outlined),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 240,
                  height: 60,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'Joined October 2023',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
