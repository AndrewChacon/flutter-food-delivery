import 'package:flutter/material.dart';
import 'package:mobile/components/my_current_location.dart';
import 'package:mobile/components/my_description_box.dart';
import 'package:mobile/components/my_drawer.dart';
import 'package:mobile/components/my_sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Home"),
      //   backgroundColor: Theme.of(context).colorScheme.surface,
      // ),
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
              title: const Text("Title"),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  // current location
                  const MyCurrentLocation(),

                  // description box
                  const MyDescriptionBox(),
                ],
              )),
        ],
        body: Container(color: Colors.blue),
      ),
    );
  }
}
