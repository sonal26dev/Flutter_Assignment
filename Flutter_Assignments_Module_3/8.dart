// Q-8. Write a program to show four images around Textview.

import 'package:flutter/material.dart';

void main() => runApp(Q_8());

class Q_8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,
          title: Center(child: Text('Four images around Textview')),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                    image: NetworkImage(
                        "https://images.yourstory.com/cs/1/b3c70442-ab5e-11e8-8691-f70342131e20/flutter-application-development-info21550223369792.png?fm=png&auto=format"),
                    height: 200,
                    width: 150),
                SizedBox(
                  width: 20,
                ),
                Image(
                    image: NetworkImage(
                        'https://codism.io/wp-content/uploads/2019/11/Flutter-1-01.png'),
                    height: 200,
                    width: 150),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'FLUTTER',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.K2qef7fopbGusv9F4fJM0wHaJ4?w=115&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                    height: 200,
                    width: 150),
                SizedBox(
                  width: 20,
                ),
                Image(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/70/20/af/7020afa47dccec0c203f29ff8486407a.jpg'),
                    height: 200,
                    width: 150),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
