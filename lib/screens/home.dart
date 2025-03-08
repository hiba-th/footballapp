import 'package:flutter/material.dart';
import 'package:footballapp/screens/search.dart';

class Home extends StatelessWidget {
  final List<ButtonData> buttonDataList = [
    ButtonData(
        text: 'Button 1',
        backgroundColor: Colors.blue,
        image: 'assets/images/image1.png'), // Replace with your image path
    ButtonData(
        text: 'Button 2',
        backgroundColor: Colors.green,
        image: 'assets/images/image2.png'), // Replace with your image path
    ButtonData(
        text: 'Button 3',
        backgroundColor: Colors.orange,
        image: 'assets/images/image3.png'), // Replace with your image path
    ButtonData(
        text: 'Button 4',
        backgroundColor: Colors.purple,
        image: 'assets/images/image4.png'), // Replace with your image path
    ButtonData(
        text: 'Button 5',
        backgroundColor: Colors.red,
        image: 'assets/images/image5.png'), // Replace with your image path
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey,
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: SizedBox(
                height: 100.0, // Adjust the height as needed
                child: Column(
                  children: [


                        Row( mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text('Top league',
                             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                             textAlign: TextAlign.start,
                                               ),
                          ],
                        ),

                    SizedBox( height : 10),
                    Container(
                      height: 50.0,
                      width: 2000,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: buttonDataList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              width: 160,
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: buttonDataList[index].backgroundColor,
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  // Handle button press
                                  print('Button ${buttonDataList[index].text} pressed!');
                                },
                                icon: Image.asset(
                                  buttonDataList[index].image,
                                  width: 24, // Adjust the image size as needed
                                  height: 24, // Adjust the image size as needed
                                ),
                                label: Text(buttonDataList[index].text),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Text('Live Matches',
                style : TextStyle(fontSize: 24, fontWeight: FontWeight.bold  ),
                  textAlign: TextAlign.start, ),
                Image.asset('lib/assets/image.png'),


              ],
            )
          ],
        ),
      ),
    );
  }
}


class ButtonData {
  final String text;
  final Color backgroundColor;
  final String image;

  ButtonData({
    required this.text,
    required this.backgroundColor,
    required this.image,
  });
}