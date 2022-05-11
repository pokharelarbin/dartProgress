import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal App'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 150,
                width: 200,
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg'),
              ),
              const SizedBox(width: 10),
              Stack(
                children: [
                  Container(
                    height: 185,
                    width: 200,
                    child: Image.network(
                        'https://media.istockphoto.com/photos/cheeseburger-with-cola-and-french-fries-picture-id1154731746'),
                  ),
                  const Text(
                    'Hamburger',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 150,
                width: 200,
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg'),
              ),
              const SizedBox(width: 10),
              Stack(
                children: [
                  Container(
                    height: 185,
                    width: 200,
                    child: Image.network(
                        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg'),
                  ),
                  const Text(
                    'Classic Hamburger',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
            ],
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
                  ),
                  // colorFilter: ColorFilters.greyscale,
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  right: 16,
                  child: Text(
                    'Image With Splash',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
