// 18. Write a code to display profile and logout option in options menu

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_18(),
    );
  }
}

class Q_18 extends StatefulWidget {
  const Q_18({Key? key}) : super(key: key);

  @override
  State<Q_18> createState() => _Q_18State();
}

class _Q_18State extends State<Q_18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text("Profile and logout menu"),
          leading: const Icon(Icons.person_3_rounded),
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.logout),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 0,
                    onTap: () {},
                    enabled: true,
                    child: Text("Setting and Privacy",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold)),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text("Your activity",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold)),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text("Archive",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold)),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text('Saved',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold)),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    child: Text('Logout',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold)),
                  )
                ];
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Find Your \nConsultation',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18))),
                            fixedSize: MaterialStatePropertyAll(Size(350, 50)),
                            backgroundColor: MaterialStatePropertyAll(
                                Colors.orangeAccent[100])),
                        onPressed: () {
                          print("Search Any think");
                        },
                        onLongPress: () {
                          print("Processing.......");
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.search,
                                      color: Colors.black54, size: 38),
                                  Text(
                                    'Search',
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 25),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Categories',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          OutlinedButton(
                              style: ButtonStyle(
                                fixedSize:
                                    MaterialStatePropertyAll(Size(90, 40)),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.orange),
                              ),
                              onPressed: () {
                                print("Adults ");
                              },
                              onLongPress: () {
                                print("Processing .......");
                              },
                              child: Text(
                                'Adults',
                                style: TextStyle(color: Colors.deepPurple),
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          OutlinedButton(
                              style: ButtonStyle(
                                fixedSize:
                                    MaterialStatePropertyAll(Size(100, 40)),
                              ),
                              onPressed: () {
                                print("Childrens!!!! ");
                              },
                              onLongPress: () {
                                print("Processing .......");
                              },
                              child: Text('Childrens',
                                  style: TextStyle(color: Colors.deepPurple)))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          OutlinedButton(
                              style: ButtonStyle(
                                fixedSize:
                                    MaterialStatePropertyAll(Size(90, 40)),
                              ),
                              onPressed: () {
                                print("Womans ");
                              },
                              onLongPress: () {
                                print("Processing .......");
                              },
                              child: Text('Womans',
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          OutlinedButton(
                              style: ButtonStyle(
                                fixedSize:
                                    MaterialStatePropertyAll(Size(80, 40)),
                              ),
                              onPressed: () {
                                print("Mens ");
                              },
                              onLongPress: () {
                                print("Processing .......");
                              },
                              child: Text('Mens',
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold)))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 300,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Text(
                                        'Cough & \nCold',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Text(
                                        '10 Doctors',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://th.bing.com/th/id/OIP.ENNqWxY2c01NHYShekgehQHaGu?w=230&h=209&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                                        height: 170,
                                        width: 130,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 300,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Text(
                                        'Heart \nSpecialist',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Text(
                                        '17 Doctors',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://th.bing.com/th/id/OIP.YmYS1897MmFGnlzSmAMdoAHaHa?pid=ImgDet&w=180&h=180&c=7&dpr=1.4'),
                                        height: 170,
                                        width: 130,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 300,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Text(
                                        'Blood \nDonaction',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Text(
                                        '11 Doctors',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://th.bing.com/th/id/OIP._Q3WHYfK3b6ToKCYC7twZAHaFj?w=206&h=184&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                                        height: 170,
                                        width: 130,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 300,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Text(
                                        'Eyes \nCare',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Text(
                                        '10 Doctors',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://th.bing.com/th/id/OIP.wW8RrJXF8PH07pB86tr8ugHaGd?w=181&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                                        height: 170,
                                        width: 130,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      'Doctors',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Image(
                                        image: NetworkImage(
                                            'https://th.bing.com/th/id/OIP.tk21VELZKFBrZtD-JBkQEAHaIS?w=145&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                                        height: 80,
                                        width: 100),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Dr.Stafeni Albert',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('Heart Speailist',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  ElevatedButton(
                                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.deepOrange),
                                          shape: MaterialStatePropertyAll(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),fixedSize: MaterialStatePropertyAll(Size(70, 20))),
                                      onPressed: () {
                                        print("Call anytime!!!");
                                      },
                                      onLongPress: () {
                                        print("Processing.....");
                                      },
                                      child: Text(
                                        'Call',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.white),
          elevation: BouncingScrollSimulation.maxSpringTransferVelocity,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active_outlined),
                label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_rounded), label: 'Settings'),
          ],
          onTap: (value) {},
          selectedItemColor: Colors.pink,
          useLegacyColorScheme: true,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.deepOrange,
          unselectedLabelStyle: TextStyle(color: Colors.deepPurpleAccent),
          showUnselectedLabels: true,
          showSelectedLabels: true,
        ));
  }
}
