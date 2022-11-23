import 'package:flutter/material.dart';
import 'package:zoom_clone/screens/history_meeting_screen.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/widgets/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

// Creating the pages so that we will Navigate easily
  List<Widget> pages = [const HistoryMeetingScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text('Meet & Chat'),
        elevation: 0,
        centerTitle: true,
        // Remove the unNecessary back Button provided by the Flutter
        automaticallyImplyLeading: false,
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChanged,
        // unselectedFontSize: 14.0,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank, size: 25), label: 'Meet & Chart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.videocam, size: 30), label: 'Meetings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 25), label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined, size: 25), label: 'Settings'),
        ],
      ),
    );
  }
}
