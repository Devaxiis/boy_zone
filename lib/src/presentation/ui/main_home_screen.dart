import 'package:flutter/material.dart';
import 'package:store_app/src/presentation/ui/bag_screen.dart';
import 'package:store_app/src/presentation/ui/home_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  PageController controller = PageController();
  int page = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      appBar: AppBar(
          title:RichText(text: const TextSpan(
              children: [
                TextSpan(text: 'BOY',style: TextStyle(color: Color(0xfff38634),fontWeight: FontWeight.w700,fontSize: 25)),
                TextSpan(text: 'zona',style: TextStyle(color: Color(0xfff38634),fontWeight: FontWeight.w700,fontSize: 20)),
              ]
          ))
      ),

      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          children: const [
            HomeScreen(),
            BagScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        // selectedItemColor: Colors.black,
        unselectedIconTheme: const IconThemeData(
            color: Color(0xff9b9b9b)
        ),
        selectedIconTheme: const IconThemeData(
          color: Color(0xfff38634)
        ),
        selectedLabelStyle:  const TextStyle(color: Color(0xfff38634)),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        useLegacyColorScheme: false,

        onTap: (value){
          page = value;
          controller.animateToPage(page, duration: const Duration(seconds: 1), curve: Curves.decelerate);
        setState(() {});
          },
        currentIndex: page,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Bosh sahifa'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: 'Savat'),
        ],
      ),
    );
  }
}
