// 14. Write a code to display alert dialog with list of cities and Single choice selection display selectedcity in TextView
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_14(),
    );
  }
}
class Q_14 extends StatefulWidget {
  const Q_14({Key? key}) : super(key: key);

  @override
  State<Q_14> createState() => _Q_14State();
}

class _Q_14State extends State<Q_14> {
  List<String> cityList = ["Mumbai", "Pune", "Surat", "New Delhi", "Varanasi"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              "Alert dialog screen with listview",
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            )),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.teal),
                    elevation: MaterialStatePropertyAll(20),
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                    fixedSize: MaterialStatePropertyAll(Size(300, 50))),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        title: Text(" Famous cities in India "),
                        content: Container(
                          width: double.minPositive,
                          child: ListView.builder(
                            //applying listview builder to automatically generate list
                              shrinkWrap: true,
                              itemCount: cityList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  title: Text(cityList[index]),
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(20)),
                                          backgroundColor: Colors.teal,
                                          title: Text(
                                            cityList[index],
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                          content: const Text(
                                            "A city of India",
                                            style:
                                            TextStyle(color: Colors.white),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              }),
                        ),
                      );
                    },
                  );
                },
                child: const Text('Alert Dialog',
                    style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
