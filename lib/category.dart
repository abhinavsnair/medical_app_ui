import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Category extends StatelessWidget {
  final image;
  final text;
   Category({super.key,required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: 150,
                decoration: BoxDecoration( color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
                ),
               
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                       Image.network( image,height: 35,width: 35,),
                    Text(text,style: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),)
                    ],
                  ),
                ),
              ),
            );
  }
}