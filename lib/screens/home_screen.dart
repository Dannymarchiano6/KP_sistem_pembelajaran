import 'package:education_app_ui/Screens/kelas_10.dart';
import 'package:education_app_ui/Utils/colors.dart';
import 'package:flutter/material.dart';
// Import the new screen

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearchVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(
                isSearchVisible: _isSearchVisible,
                searchController: _searchController,
                toggleSearch: () {
                  setState(() {
                    _isSearchVisible = !_isSearchVisible;
                  });
                },
              ),
              const SizedBox(height: 10),
              const CategoryTabs(),
              const SizedBox(height: 10),
              const CategoryHeader(),
              const SizedBox(height: 10),
              CategoryImages(), // Remove const to enable context use
              const SizedBox(height: 10),
              const BottomNavBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final bool isSearchVisible;
  final TextEditingController searchController;
  final VoidCallback toggleSearch;

  const Header({
    Key? key,
    required this.isSearchVisible,
    required this.searchController,
    required this.toggleSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "Images/menu1.png",
                height: 40,
                width: 40,
              ),
              GestureDetector(
                onTap: toggleSearch,
                child: Image.asset(
                  "Images/search1.png",
                  height: 40,
                  width: 40,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: isSearchVisible ? 60 : 0,
            child: isSearchVisible
                ? TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Search...",
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: toggleSearch,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  )
                : null,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Hi Julia",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        "Images/hand.png",
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Hallo Programmer",
                    style: TextStyle(color: Colors.black54, fontSize: 17),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                "Images/profile.png",
                height: 110,
                width: 110,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryTabs extends StatelessWidget {
  const CategoryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            color: primaryColor,
            child: const SizedBox(
              height: 50,
              width: 90,
              child: Center(
                child: Text(
                  "Top",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const Text(
            " Design",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Text(
            "Marketing",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Image.asset(
            "Images/filter.png",
            height: 40,
          ),
        ],
      ),
    );
  }
}

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            " Materi TIK ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            "See all",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color.fromARGB(255, 233, 236, 246)])),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kelas10()),
                );
              },
              child: displayImage(250, "Images/materikelas10.png"),
            ),
          ),
          Positioned(
            right: 0,
            child: displayImage(220, "Images/materikelas11.png"),
          ),
          Positioned(
            left: 0,
            top: 260,
            child: displayImage(220, "Images/materikelas12.png"),
          ),
          Positioned(
            right: 0,
            top: 230,
            child: displayImage(250, "Images/quiz.png"),
          ),
        ],
      ),
    );
  }

  Padding displayImage(double height, String image) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: height,
        width: 193,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 103,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    color: primaryColor,
                    child: const SizedBox(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.home,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.watch_later,
                    color: Colors.black45,
                    size: 35,
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Colors.black45,
                    size: 35,
                  ),
                  const Icon(
                    Icons.person_2,
                    color: Colors.black45,
                    size: 35,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(200),
                ),
                height: 12,
                width: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
