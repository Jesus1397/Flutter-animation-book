import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Bookio',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.cloud_download_outlined,
                color: Colors.grey[400],
              ),
              const SizedBox(width: 20.0),
              Icon(
                Icons.book_outlined,
                color: Colors.grey[400],
              ),
            ],
          )
        ],
      ),
    );
  }
}
