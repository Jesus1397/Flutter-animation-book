import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const BottomBarWidget({super.key, required this.title, required this.subtitle});

 
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Children's Fiction",
                  style: TextStyle(),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "General Fiction",
                  style: TextStyle(),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 20,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 10,
                      width: size.width * 0.70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: 10,
                      width: size.width * 0.30,
                      decoration: BoxDecoration(
                        color: Colors.green[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Text(
                  '34 %',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
