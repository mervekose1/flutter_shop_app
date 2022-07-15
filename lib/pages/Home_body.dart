import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'SearchBar.dart';

class HomeBody extends StatefulWidget {
  HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: const [
              // user row widget to create appbar
              CustomAppBar(),
              SizedBox(height: 20),
              SearchBar(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
