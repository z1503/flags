import 'package:flags/item.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final Item item;

  const GridItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column( 
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            item.flag,
            width: 500,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(
            item.name,
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Площадь: ',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                item.sqr,
                style: const TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          const Text(
                'Население: ',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
          Text(
            item.population,
            style: const TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}