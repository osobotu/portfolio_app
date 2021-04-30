// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio App",
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(
            'Portfolio App',
            style: TextStyle(),
          )),
          backgroundColor: Colors.blueGrey,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.all(16.0), child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-RidyFT6-aV0YsZpAw9YBNz13b4FoZ30EpQ&usqp=CAU')
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb-JfPkuinQqmay2_pI6Y1tKQa0XqykuVjUw&usqp=CAU'),
                      ),
                      title: Text(
                          "Stephen Shelby",
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      subtitle: Text(
                        "Flutter Developer",
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                      trailing: Icon(Icons.mail_outline_rounded),
                    ),
                ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(11.0),
                      child: Text(
                          "I love to build solutions. I think about problems and try to solve them. Mobile apps let us put solutions in people's hands. So, I love to build mobile apps. I am a curious learner. Silicon Valley is my favorite comedy series. It inspired my love for coding. I am a die hard fan of the Peaky Blinders TV Series.",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                    ListTile(
                      title: ElevatedButton(
                        child: Text("Download CV"),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                          'My Articles',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Senior devs are made not born. How?"),
                      trailing: Icon(Icons.arrow_forward_rounded),
                    ),
                    ListTile(
                      title: Text("Asynchronous Programming in Dart."),
                      trailing: Icon(Icons.arrow_forward_rounded),
                    ),
                    ListTile(
                      title: Text("Machine Learning on Mobile Devices."),
                      trailing: Icon(Icons.arrow_forward_rounded),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'My Projects',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.apps_sharp),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Budgy"),
                      subtitle: Text(
                        "Smarter ways to manage your money with AI.",
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                      trailing: Icon(Icons.download_sharp),
                    ),
                    ListTile(
                      title: Text("Viux"),
                      subtitle: Text(
                        "Let users tell you how your app feels.",
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                      trailing: Icon(Icons.download_sharp),
                    ),
                    ListTile(
                      title: Text("Mira"),
                      subtitle: Text(
                        "Get paid to chat with a bot.",
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                      trailing: Icon(Icons.download_sharp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
