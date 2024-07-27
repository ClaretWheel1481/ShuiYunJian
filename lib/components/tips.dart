import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  final String title;
  final IconData icons;
  final String text;
  const Tips({super.key,required this.text,required this.icons,required this.title});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withAlpha(100),
      ),
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.4,
      height: 200 * 0.618,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icons),
              Text(" $title",style: const TextStyle(fontSize: 17))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(text,style: const TextStyle(fontSize: 14,color: Colors.grey))
        ],
      ),
    );
  }
}