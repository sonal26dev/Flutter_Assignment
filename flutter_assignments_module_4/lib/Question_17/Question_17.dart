// Question_17 :open alert dialog when user want to exit from the application.
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_17(),
    );
  }
}
class Q_17 extends StatefulWidget {
  const Q_17({Key? key}) : super(key: key);

  @override
  State<Q_17> createState() => _Q_17State();
}

class _Q_17State extends State<Q_17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Profile",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 0,
                  onTap: () {},
                  enabled: true,
                  child: const Text("Setting and Privacy",style: TextStyle(fontSize: 20)),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text("Payments",style: TextStyle(fontSize: 20)),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("QR Code",style: TextStyle(fontSize: 20)),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Help',style: TextStyle(fontSize: 20)),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text('Contact us',style: TextStyle(fontSize: 20)),
                )
              ];
            },
          )
        ],
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 8,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                alignment: Alignment.center,
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      foregroundImage: NetworkImage(
                          'https://icons.veryicon.com/png/o/business/multi-color-financial-and-business-icons/user-139.png'),
                      radius: 70,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'User name',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'FLUTTER',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call, size: 30, color: Colors.deepOrange),
                  Text(
                    '  Mobile number',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '      91235 32654',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.credit_card, size: 30, color: Colors.deepOrange),
                  Text(
                    '  Referal code',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '         2503bbz2511',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_balance_wallet_sharp,
                      size: 30, color: Colors.deepOrange),
                  Text(
                    '  BonBiz coins            ',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '      1000        ',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_pin, size: 30, color: Colors.deepOrange),
                  Text(
                    '  Edit Profile                                    ',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Colors.deepOrange),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          side: BorderSide(style: BorderStyle.none))),
                      fixedSize: MaterialStatePropertyAll(Size(120, 20)),
                      elevation: MaterialStatePropertyAll(30)),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Are you sure you really want to Logout"),
                          content: TextButton(
                            onPressed: () => Navigator.pop(context, 'yes'),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('YES',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    )),
                                SizedBox(width: 50,),
                                Text(' NO ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text(
                    'Logout',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
