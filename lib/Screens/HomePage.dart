import 'package:commerceapp/components/Item.dart';
import 'package:commerceapp/components/drawer.dart';
import 'package:commerceapp/const/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('PRODUCTS',
            style: TextStyle(color: Colors.black, letterSpacing: 1.5)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Text('Hi Ahad!',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                              )),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Text(
                      'Are you looking for quality products? you are at the right place, continue your shopping.',
                      style: TextStyle(color: Colors.white70, height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -50),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 5),
                          color: color1.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 5)
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search products',
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(right: 10),
                      decoration:
                          BoxDecoration(color: color1, shape: BoxShape.circle),
                      child: const Center(
                          child: Icon(Icons.search,
                              color: Colors.white, size: 22)),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: const [
                ItemProduct(),
                ItemProduct(),
                ItemProduct(),
                ItemProduct(),
                ItemProduct(),
                ItemProduct(),
                ItemProduct(),
                ItemProduct(),
                ItemProduct(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
