import 'package:commerceapp/const/colors.dart';
import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
      child: Row(
        children: [
          Image.asset('assets/images/food4.jpg',
              fit: BoxFit.fill, height: 120, width: 100),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Here is Product Title', style: TextStyle(color: color1)),
                const SizedBox(height: 5),
                Text(
                  'Here is the description of this project, kindly read it carefully. We offer 10% discount on this product.',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(height: 1.5),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text("price",
                    style: TextStyle(
                        color: color1,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1))
              ],
            ),
          )
        ],
      ),
    );
  }
}
