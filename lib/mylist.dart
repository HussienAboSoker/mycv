import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'main.dart';
// ignore: camel_case_types, must_be_immutable
class mylist extends StatefulWidget {
// final String title;
 final IconData icon;
  final String url;
  const mylist({required this.icon,  super.key, required this.url});

  @override
  State<mylist> createState() => mylistState();
}

class mylistState extends State<mylist> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final Uri uri = Uri.parse(widget.url);
              launchUrl(uri);
      },
      child: ListTile(
        iconColor:colorDark,
      //  textColor: isDark == true ? Colors.black : Color.fromARGB(255, 16, 23, 122),
        tileColor: Colors.white,
        leading:  Icon(widget.icon,
      // color: isDark == true ? colorwhite : colorDark,
        ),
        title: Text(
          " ${widget.url}",
          maxLines: 1,
          overflow:TextOverflow.ellipsis , //...
         
        ),
        //style: ListTileStyle.list,
        shape: RoundedRectangleBorder(
          side:  BorderSide(width: 2,
           color: isDark == false ? colorDark : colorwhite,),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
