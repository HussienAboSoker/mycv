import 'package:flutter/material.dart';

import 'main.dart';

class ImageTextWidget extends StatefulWidget {
  //final AssetImage? assetImage;
  final NetworkImage ?networkImage;
  final String text1;
  final String text2;
  final double radius;
  const ImageTextWidget({
    super.key,
    // this.assetImage,
    this.networkImage,
    required this.text1,
    required this.text2,
    required this.radius,
  });

  @override
  State<ImageTextWidget> createState() => _ImageTextWidgetState();
}

class _ImageTextWidgetState extends State<ImageTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                 radius: widget.radius+2,
                 backgroundColor:isDark == false ? colorDark : colorwhite ,
                child: CircleAvatar(
                //  onBackgroundImageError:const Icon(Icons.error) ,
                  backgroundImage:widget.networkImage ,
                  
                  radius: widget.radius,
                ),
              ),
              const SizedBox(width: 14.0),
              Column(
               // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    widget.text1,
                    style:  TextStyle(
                      color: isDark == true ? colorwhite : colorDark,
                       fontSize: 20),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    widget.text2,
                    style:  TextStyle(
                          color: isDark == false ? colorDark : colorwhite,
                         fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        const  SizedBox(height: 20,),
        
        ],
      ),
    );
  }
}
