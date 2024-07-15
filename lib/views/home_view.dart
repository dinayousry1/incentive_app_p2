import 'package:flutter/material.dart';
import 'package:incentive_app_p2/views/Invite_friend_view.dart';
import 'package:incentive_app_p2/views/invitations_view.dart';
import 'package:incentive_app_p2/widgets/custom_appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    InviteFriend(),
    Invitations(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: _selectedIndex == 0
          ? const CustomAppBar()
          : AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              actions: [
                Image.asset(
                  'assets/Menu.png',
                  width: 60,
                  height: 60,
                  fit: BoxFit.scaleDown,
                ),
              ],
              title: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.32,
                  ),
                  const Text(
                    'سجل الدعوات',
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ],
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 8, right: 8),
                child: Image.asset(
                  'assets/hse.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
      body: _pages.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: const Icon(
          Icons.document_scanner_sharp,
          size: 30,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextButton(
                onPressed: () => _onItemTapped(1),
                child: Text(
                  'الدعوات',
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      color: _selectedIndex == 1
                          ? const Color.fromRGBO(179, 179, 179, 1)
                          : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextButton(
                onPressed: () => _onItemTapped(0),
                child: Text(
                  'الرئيسية',
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      color: _selectedIndex == 0
                          ? const Color.fromRGBO(179, 179, 179, 1)
                          : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
