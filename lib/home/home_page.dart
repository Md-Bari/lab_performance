import 'package:flutter/material.dart';

class DriveHomePage extends StatefulWidget {
  const DriveHomePage({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _DriveHomePageState createState() => _DriveHomePageState();
}

class _DriveHomePageState extends State<DriveHomePage> {
  int _selectedIndex = 3; // Default to 'Files'

  final List<Widget> _pages = [
    Center(child: Text('Home')),
    Center(child: Text('Starred')),
    Center(child: Text('Shared')),
    Center(child: Text('Files')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Drive"),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.grey[700],
            child: Icon(Icons.person),
          ),
          SizedBox(width: 10),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey[900]),
              child: Text('Google Drive', style: TextStyle(fontSize: 20)),
            ),
            ListTile(leading: Icon(Icons.access_time), title: Text('Recent')),
            ListTile(
                leading: Icon(Icons.workspaces_outline),
                title: Text('Workspaces')),
            ListTile(leading: Icon(Icons.offline_pin), title: Text('Offline')),
            ListTile(leading: Icon(Icons.delete), title: Text('Trash')),
            ListTile(leading: Icon(Icons.report), title: Text('Spam')),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ListTile(
                leading: Icon(Icons.help_outline),
                title: Text('Help & feedback')),
            ListTile(
              leading: Icon(Icons.storage),
              title: Text('Storage'),
              subtitle: LinearProgressIndicator(
                value: 10 / 100,
                backgroundColor: Colors.grey[800],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child:
                  Text('10 GB of 100 GB used', style: TextStyle(fontSize: 12)),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined), label: 'Starred'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Shared'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Files'),
        ],
      ),
    );
  }
}
