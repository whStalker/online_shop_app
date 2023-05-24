import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.black26,
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Поиск',
                    hintStyle: TextStyle(color: Colors.black26),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: FaIcon(
                  FontAwesomeIcons.microphone,
                  color: Colors.black26,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: FaIcon(
                  FontAwesomeIcons.camera,
                  color: Colors.black26,
                ),
              )
            ],
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
