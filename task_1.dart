//        TASK 1


import 'package:flutter/material.dart';

class ResponsiveGridLayout extends StatelessWidget {
  final List<String> imageUrls = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    int columns = width > 600 ? 4 : 2;

    return Scaffold(
      appBar: AppBar(title: Text('Responsive Grid'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: columns,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Image.network(imageUrls[index], fit: BoxFit.cover);
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ResponsiveGridLayout()));
}


