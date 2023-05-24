import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
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
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: AssetImage('assets/img-1.jpg'),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: AssetImage('assets/img-2.jpg'),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: Image.asset(
                      'assets/img-3.jpg',
                      fit: BoxFit.cover,
                    ).image,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 150,
              enlargeCenterPage: true,
              viewportFraction: 1,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
