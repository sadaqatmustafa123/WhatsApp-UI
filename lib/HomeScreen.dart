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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Communities',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, int index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: index % 3 == 0
                                ? const NetworkImage(
                                    'https://images.pexels.com/photos/3760737/pexels-photo-3760737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
                                : const NetworkImage(
                                    'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                          trailing: const Column(
                            children: [
                              Text('05:35'),
                              SizedBox(
                                height: 5,
                              ),
                              Icon(Icons.done_all),
                            ],
                          ),
                          title: index % 3 == 0
                              ? const Text('Community 1')
                              : const Text('Community 2'),
                          subtitle: const Text('Update from community'),
                        );
                      }),
                ),
              ],
            ),
            //chats section code
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: index % 3 == 0
                          ? const NetworkImage(
                              'https://images.pexels.com/photos/3760737/pexels-photo-3760737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
                          : const NetworkImage(
                              'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    trailing: const Column(
                      children: [
                        Text('05:35'),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(Icons.done_all),
                      ],
                    ),
                    title: index % 3 == 0
                        ? const Text('User 1')
                        : const Text('User 2'),
                    subtitle: const Text('User message'),
                  );
                }),
            //status section code
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Recent Updates',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, int index) {
                        return ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: index % 3 == 0 ? 0 : 3,
                                  color: Colors.green,
                                )),
                            child: CircleAvatar(
                              backgroundImage: index % 3 == 0
                                  ? const NetworkImage(
                                      'https://images.pexels.com/photos/3760737/pexels-photo-3760737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
                                  : const NetworkImage(
                                      'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            ),
                          ),
                          title: index % 3 == 0
                              ? const Text('User 1')
                              : const Text('User 2'),
                          subtitle: Row(children: [
                            index % 2 == 0
                                ? const Text(
                                    'View Status',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                : const Text('Status Viewd'),
                          ]),
                        );
                      }),
                ),
              ],
            ),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: index % 3 == 0
                          ? const NetworkImage(
                              'https://images.pexels.com/photos/3760737/pexels-photo-3760737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
                          : const NetworkImage(
                              'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    trailing: Icon(
                      index % 2 == 0 ? Icons.phone : Icons.video_call,
                      color: const Color.fromARGB(255, 23, 142, 27),
                    ),
                    title: const Text('User (3)'),
                    subtitle: const Row(children: [
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
