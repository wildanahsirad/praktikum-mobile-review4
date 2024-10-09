import 'package:flutter/material.dart';
// import 'package:pertemuan5/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  void _onItemTap(int index) {
    setState(() {
      _index = index;
    });
  }

  static List<Widget> _pages = [
    Icon(
      Icons.home,
      size: 100,
    ),
    Icon(
      Icons.chat_bubble,
      size: 100,
    ),
    Icon(
      Icons.call,
      size: 100,
    ),
    Icon(
      Icons.camera,
      size: 100,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 95, 152, 104),
        unselectedItemColor: Colors.white,
        selectedItemColor: Color.fromRGBO(236, 223, 204, 1),
        currentIndex: _index,
        onTap: _onItemTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Telpon",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: "Camera",
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 95, 152, 104),
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
              accountName: Text("Praktikum Mobile"),
              accountEmail: Text('mobile@gmail.com'),
              decoration: BoxDecoration(color: Color.fromRGBO(236, 223, 204, 1)),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('Camera'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Cari'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.menu,
        //     size: 30,
        //   ),
        //   onPressed: () {},
        // ),
        title: const Text('Halaman Beranda'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/akun');
            },
            icon: const Icon(
              Icons.person_outline,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            icon: const Icon(
              Icons.settings,
              size: 30,
            ),
          )
        ],
      ),
      body:
          // Center(
          //   child: ElevatedButton(
          //     child: const Text('Pindah Screen'),
          //     onPressed: () {
          //       // Navigator.push(
          //       //   context,
          //       //   MaterialPageRoute(
          //       //     builder: (context) {
          //       //       return const Settings();
          //       //     },
          //       //   ),
          //       // );
          //       Navigator.pushNamed(context, '/settings');
          //       //             Navigator.pushReplacement<void, void>(
          //       //   context,
          //       //   MaterialPageRoute<void>(
          //       //     builder: (BuildContext context) => const MyHomePage(),
          //       //   ),
          //       // );
          //     },
          //   ),
          // ),
          Center(
        child: _pages.elementAt(_index),
      ),
    );
  }
}
