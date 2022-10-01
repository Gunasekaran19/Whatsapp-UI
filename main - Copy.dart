import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

main() {
  runApp(homeScreen());
}

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Chatscreen(),
    );
  }
}

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Chatscreen> {
  int specialIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'WhatsApp',
              textAlign: TextAlign.start,
            ),
            backgroundColor: Color(0xff075e54),
            actions: [
              Icon(Icons.search),
              Padding(
                padding: EdgeInsets.all(16.0),
              ),
              Icon(Icons.more_vert),
              Padding(
                padding: EdgeInsets.all(16.0),
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Container(
                  width: 30.0,
                  child: Icon(
                    Icons.camera_alt_rounded,
                  ),
                )),
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Center(child: Text('Camara Access')),
            ListView.separated(
              itemCount: 15,
              separatorBuilder: (BuildContext context, int index) => Divider(
                thickness: 1.5,
              ),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                    ),
                  ),
                  subtitle: Text('hi'),
                  trailing: const Text(
                    "Yesterday",
                  ),
                  title: Text(
                    "Name $index",
                  ),
                );
              },
            ),
            ListView.separated(
                separatorBuilder: (BuildContext context, int index) => Divider(
                      thickness: 1.5,
                    ),
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  if (index == specialIndex) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                        ),
                      ),
                      title: Text("My Status"),
                      subtitle: Text('Today,9.55 am'),
                    );
                  }
                  return ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                        ),
                      ),
                      subtitle: Text('Yesterday,11.0$index am'),
                      title: Text("Name $index"));
                }),
            ListView.separated(
              itemCount: 15,
              separatorBuilder: (BuildContext context, int index) => Divider(
                thickness: 1.5,
              ),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                    ),
                  ),
                  subtitle: Text("Today,4.1$index pm"),
                  trailing: Icon(Icons.call),
                  title: Text(
                    "Name $index",
                  ),
                );
              },
            ),
          ]),
        ));
  }
}
