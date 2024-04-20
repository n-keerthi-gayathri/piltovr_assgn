import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyCardWidget(),
            Container(
              margin: EdgeInsets.only(left:16, top: 16),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 25,
                    width: 25,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'WeWork Labs Events Calendar >',
                    //I tried using icon instead of '>' symbol but it's not working
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:16),
              child: Text(
                  'Founders Meetup | How can governments help?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:16),
              child: Text(
                  'Tue, 23 Apr, 5:00 PM - 8:00 PM'
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:16),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      // Share Action
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: Text(
                      'Share',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      // Open Action
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: Text(
                      'Open in Safari',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      // More Action
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: Text(
                      '...',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left:16,top:16),
                child :Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children : [
                      Text('Location'),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 10,
                        indent: 2,
                        endIndent: 21,
                      ),
                      Text(
                          'Register to See Location',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      Text(
                        'Bengaluru, Karnataka',
                      ),
                    ])
            ),
            Container(
                margin: EdgeInsets.only(left:16,top:16,bottom:16),
                child :Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children : [
                      Text('Hosted by'),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 10,
                        indent: 2,
                        endIndent: 21,
                      ),
                      Text(
                          'Mohini Kumar\nKarishma Chandwani',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ])
            ),
            Container(
              margin: EdgeInsets.only(left:16,right:16),
             child:TextButton(
              onPressed: () {
                // Sign in Action
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 40)),
                alignment: Alignment.center,
              ),
              child: Text(
                'Sign in to Register',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4.0,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              'assets/images/meet.png',
              fit: BoxFit.contain,
              width: double.infinity,
            ),
          ),
          ListTile(
            title: Text('Founder Meetup',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                )
            ),
            subtitle: Text('Inviting you all for a Fireside Chat on navigating startup challenges and government policies that benefit ecosystem!', style: TextStyle(fontSize: 14)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 0),
                child: Text(
                  'Date: 23rd April\nTime: 5PM onwards\nLocation: WeWork Prestige Central, Bengaluru',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 0),
                child: Image.asset(
                  'assets/images/nameWithLogo.png',
                  height: 50,
                  width: 150,
                ),
              ),
            ],
          )
        ],
      ),
    );


  }
}
