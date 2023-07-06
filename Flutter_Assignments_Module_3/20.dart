// 20. Create an application like gmail and display Screens according to user selection and design each page with dummy data
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Q_20(),
    );
  }
}

class Q_20 extends StatefulWidget {
  const Q_20({Key? key}) : super(key: key);
  @override
  State<Q_20> createState() => _Q_20State();
}

class _Q_20State extends State<Q_20> {
  List<String> Contactlist = [
    'Tops Technologies',
    'Linkedin Job Alerts',
    'Talent.com',
    'Naukri',
    'Indeed',
    'ZipRecruiter',
    'Glassdoor',
    'Monster',
    'Snag',
    'CareerBuilder',
    'Merlin',
    'JonStack',
    'Linkdin',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        elevation: 50,
        backgroundColor: Colors.black54,
        child: ListView(
          children: [
            SizedBox(
              height: 60,
              child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 77, 76, 76),
                  ),
                  child: Text("Gmail",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold))),
            ),
            ListTile(
                title: Text(
                  "  All inboxes",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                splashColor: Colors.white,
                enabled: true,
                onTap: () {},
                leading: Icon(
                  Icons.all_inbox,
                  color: Colors.white,
                )),
            ListTile(
                title: Text(
                  "Primary",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                splashColor: Colors.white,
                enabled: true,
                onTap: () {},
                leading: Icon(Icons.stay_primary_landscape_outlined,
                    color: Colors.white)),
            ListTile(
                title: Text(
                  "Social",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                splashColor: Colors.white,
                enabled: true,
                onTap: () {},
                leading:
                    Icon(Icons.sensor_occupied_rounded, color: Colors.white)),
            ListTile(
                title: Text(
                  "Updates",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                splashColor: Colors.white,
                enabled: true,
                onTap: () {},
                leading:
                    Icon(Icons.security_update_warning, color: Colors.white)),
            ListTile(
                title: Text(
                  "Starred",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                splashColor: Colors.white,
                enabled: true,
                onTap: () {},
                leading: Icon(Icons.star_border, color: Colors.white)),
            ListTile(
                title: Text(
                  "Important",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                splashColor: Colors.white,
                enabled: true,
                onTap: () {},
                leading:
                    Icon(Icons.label_important_outline, color: Colors.white)),
            ListTile(
                title: Text(
                  "Sent",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                splashColor: Colors.white,
                enabled: true,
                onTap: () {},
                leading: Icon(Icons.send, color: Colors.white)),
            ListTile(
                title: Text(
                  "Scheduled",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                splashColor: Colors.white,
                enabled: true,
                onTap: () {},
                leading: Icon(Icons.schedule_send, color: Colors.white)),
            ListTile(
              enabled: true,
              leading: Icon(Icons.outbox, color: Colors.white),
              title: Text(
                "Outbox",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              splashColor: Colors.white,
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Drafts",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              enabled: true,
              onTap: () {},
              leading: Icon(Icons.drafts_outlined, color: Colors.white),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: SizedBox(
          height: 50,
          width: 390,
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 73, 73, 73),
                borderRadius: BorderRadius.circular(30)),
            child: TextFormField(
              style: const TextStyle(color: Colors.white, fontSize: 20),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: "Search in mail",
                  hintStyle: const TextStyle(color: Colors.white, fontSize: 20),
                  suffixIcon: const Icon(
                    Icons.account_circle_rounded,
                    color: Colors.white,
                    size: 30,
                  )),
            ),
          ),
        )),

      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              selected: true,
              enabled: true,
              onTap: () {},
              leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.purple),
                  child: const Center(
                      child: Text(
                    "s",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ))),
              title: Text(
                Contactlist[index],
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Column(
                children: [
                  Text("This position is for you: 1 NEW JOB",
                      style: TextStyle(color: Colors.white)),
                  Text("hiring on new Flutter Developer .....  ",
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
              trailing: Column(
                children: [
                  Text("6 Dec", style: TextStyle(color: Colors.white)),
                  Icon(
                    Icons.star_border,
                    color: Colors.white,
                  )
                ],
              ),
            );
          },
          itemCount: 13,
        ),
      ),
    );
  }
}
