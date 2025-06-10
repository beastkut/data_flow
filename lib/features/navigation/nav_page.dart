import 'package:data_flow/features/home/presentation/pages/home_page.dart';
import 'package:data_flow/features/mall/presentation/pages/mall_page.dart';
import 'package:data_flow/temp_page.dart';
import 'package:flutter/material.dart';



class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {


  int _currentIndex = 0;
  List<Widget> Screen = [
    HomePage(),
    MallPage(),
    TempPage(pageName: "Discover Page"),
    TempPage(pageName: "Inbox Page"),
    TempPage(pageName: "Account Page"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 11,

          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            // home
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("lib/assets/Nav Icon - Home.png")
                ),
                label: "H O M E",
            ),

            // mall
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("lib/assets/Nav Icon - Mall.png")
                ),
                label: "M A L L"
            ),

            // discover
            BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("lib/assets/Nav Icon - Discover.png")
              ),
              label: "D I S C O V E R",
            ),

            // inbox
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("lib/assets/Nav Icon - Inbox.png")
                ),
                label: "I N B O X"
            ),

            // account
            BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("lib/assets/Nav Icon - Account.png")
              ),
              label: "A C C O U N T",
            ),
          ]
      ),

      body: Screen[_currentIndex],
    );
  }
}
