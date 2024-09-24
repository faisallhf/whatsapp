import 'package:flutter/material.dart';
import 'package:whatsapp/pages/chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // VARIABLES
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          PopupMenuTheme(
            data: PopupMenuThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: PopupMenuButton<String>(
              onSelected: (value) {
                print(value);
              },
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(child: Text("New Group"), value: "New Group"),
                  PopupMenuItem(
                      child: Text("New Broadcast"), value: "New Broadcast"),
                  PopupMenuItem(
                      child: Text("Linked Devices"), value: "Linked Devices"),
                  PopupMenuItem(
                      child: Text("Starred Messages"),
                      value: "Starred Messages"),
                  PopupMenuItem(child: Text("Settings"), value: "Settings"),
                ];
              },
              color: Colors.white,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white54,
          tabs: [
            Tab(
              icon: Icon(
                Icons.camera_alt_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xff128C7E),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text("Camera"),
          ChatPage(),
          Text("Status"),
          Text("Calls"),
        ],
      ),
    );
  }
}
