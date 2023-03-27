import 'package:flutter/material.dart';
import 'package:my_cv/mylist.dart';
import 'package:my_cv/projects.dart';

void main() {
  runApp(const MyApp());
}

bool isDark = true;
Color colorDark = Colors.black;
Color colorwhite = Colors.white;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //get
      backgroundColor: isDark == true ? colorDark : colorwhite,
      appBar: AppBar(
        title: Text(
          "personal account",
          style: TextStyle(
            color: isDark == false ? colorDark : colorwhite,
            
          ),
        ),
        elevation: 3,
        backgroundColor: isDark == true ? colorDark : colorwhite,
        leading: IconButton(
          onPressed: () {
            setState(() {
              if (isDark == true) {
                isDark = false;
              } else {
                isDark = true;
              }
            });
          },
          icon: Icon(
            Icons.dark_mode,
            color: isDark == true ? colorwhite : colorDark,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          //GestureDetector
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //photo and my name
              //

              const ImageTextWidget(
                text1: "Hussien abo soker",
                text2: "flutter devoloper",
                networkImage: NetworkImage(
                    "https://scontent.faly2-1.fna.fbcdn.net/v/t39.30808-6/291334341_3131916227125440_5760092407908965355_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=KmE0kg9rum4AX-a8s3z&_nc_ht=scontent.faly2-1.fna&oh=00_AfATuknqlOpxjzLj3HGvn4GXvHEe9-OVWtK21LVgvGnMzw&oe=64247480"),
                radius: 70,
              ),
              //  PhotoAndData(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Contacts :",
                style: TextStyle(
                  fontSize: 30,
                  color: isDark == true ? colorwhite : colorDark,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const mylist(
                url: "https://www.instagram.com/",
                icon: Icons.email,
              ),
              const SizedBox(
                height: 20,
              ),
              const mylist(
                url: "https://www.facebook.com/tharwat.samy.9 ",
                icon: Icons.person,
              ),
              const SizedBox(
                height: 20,
              ),
              const mylist(
                url:
                    "https://github.com/MinaFaried3/GDSC-Flutter-Course-Projects/blob/main/lib/info_app/info_app.dart",
                icon: Icons.link,
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: isDark == true ? colorwhite : colorDark,
                thickness: 1,
              ),
              const ImageTextWidget(
                radius: 30,
                // assetImage: AssetImage("assets/images/sahs.jpg"),
                networkImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA-uXicu4WCq8eoBurzCXR4rhfENkJeu7mnA&usqp=CAU"),
                text1: "Move app",
                text2: "By flutter",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
