import 'package:flutter/material.dart';

class ScreenTabBar extends StatefulWidget {
  const ScreenTabBar({super.key});

  @override
  State<ScreenTabBar> createState() => _ScreenTabBarState();
}

class _ScreenTabBarState extends State<ScreenTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 7, 94, 84),
        bottom: TabBar(
          indicatorColor: Colors.red,
          controller: _tabController,
          labelStyle: const TextStyle(fontSize: 16),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          unselectedLabelStyle: const TextStyle(fontSize: 15),
          tabs: const [
            Row(
              children: [
                Text(
                  'Messages',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  radius: 15,
                  child: Text(
                    '20',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                )
              ],
            ),
            Row(
              children: [Icon(Icons.phone_android_rounded)],
            ),
            Tab(
              text: 'Tab 3',
              icon: Icon(Icons.home),
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: const [
        Center(child: Text('Tab 1 content')),
        Center(child: Text('Tab 2 content')),
        Center(child: Text('Tab 3 content')),
      ]),
    );
  }
}
