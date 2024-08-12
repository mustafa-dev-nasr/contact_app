import 'package:flutter/material.dart';

class CustomListTileDetails extends StatelessWidget {
  const CustomListTileDetails({
    required this.contanerColora,
    required this.title,
    required this.fanction,
    required this.icon,
    required this.iconColore,
    super.key,
  });

  final IconData icon;
  final String title;
  final String fanction;
  final Color contanerColora;
  final Color iconColore;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
       
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
                // overflow: TextOverflow.ellipsis,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: contanerColora),
                  child: Icon(
                    icon,
                    color: iconColore,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 300,
            child: Text(
              fanction,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey[700],
                inherit: false,
                fontSize: 18,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
