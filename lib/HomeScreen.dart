import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              const Icon(Icons.camera_alt),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          child: Text('New Group'),
                          value: 1,
                        ),
                        const PopupMenuItem(
                          child: Text('Settings'),
                          value: 2,
                        ),
                        const PopupMenuItem(
                          child: Text('Logout'),
                          value: 3,
                        ),
                      ]),
              const SizedBox(
                width: 10,
              ),
            ],
            centerTitle: false,
            title: const Text('WhatsApp'),
            bottom: const TabBar(tabAlignment: TabAlignment.fill, tabs: [
              Tab(
                child: Icon(Icons.people_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ]),
          ),
          body: TabBarView(children: [
            const Text('1'),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/3760737/pexels-photo-3760737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    trailing: Column(
                      children: [
                        Text('05:35'),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(Icons.done_all),
                      ],
                    ),
                    title: Text('User'),
                    subtitle: Text('User message'),
                  );
                }),
            const Text('3'),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/3760737/pexels-photo-3760737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    trailing: Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 23, 142, 27),
                    ),
                    title: Text('User (3)'),
                    subtitle: Row(children: [
                      Icon(
                        Icons.south_west,
                        size: 15,
                        color: Colors.red,
                      ),
                      Text('Yesterday , 12:34 pm'),
                    ]),
                  );
                }),
          ]),
        ));
  }
}
