import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/Colors.dart';
import '../../utils/Style.dart';
import 'contacts_page.dart';
import 'dapp_browser_page.dart';
import 'dashboard_page.dart';
import 'my_assets_page.dart';
import 'profile_page.dart';
import 'transfer_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tab = [
      DashboardPage(),
      ContactPage(),
      DashboardPage(),
      MyAssetsPage(),
      DappBrowserPage(),
      ProfilePage(),
    ];
    var title = '';

    if (_currentIndex == 0) {
      title = 'Dashboard';
    } else if (_currentIndex == 1) {
      title = 'My Contacts';
    } else if (_currentIndex == 3) {
      title = 'My Assets';
    } else if (_currentIndex == 4) {
      title = 'Browse DApps';
    } else if (_currentIndex == 5) {
      title = 'Profile';
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: getAppBar(title, pressed: () {
          setState(() {
            _currentIndex = 0;
          });
        }),
        body: tab[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.shifting,
          showUnselectedLabels: false,
          selectedItemColor: opPrimaryColor,
          unselectedItemColor: opSecondaryColor.withOpacity(0.6),
          currentIndex: _currentIndex,
          elevation: 8.0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 24,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.contact_page,
                  size: 24,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.send,
                  size: 24,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.credit_card,
                  size: 24,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.language,
                  size: 24,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 24,
                ),
                label: ''),
          ],
          onTap: (index) {
            if (index != 2) {
              setState(() {
                _currentIndex = index;
              });
            } else {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TransferPage(),
                              ),
                            );
                          },
                          child: Text("Send"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TransferPage(),
                              ),
                            );
                          },
                          child: Text("Receive"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TransferPage(),
                              ),
                            );
                          },
                          child: Text("Buy"),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
