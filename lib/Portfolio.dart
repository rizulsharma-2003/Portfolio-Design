import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> with SingleTickerProviderStateMixin {
  int _selectedIndex = 1; // Default to Portfolio
  String searchText = '';
  late TabController _tabController;

  final List<Map<String, String>> projects = [
    {
      "title": "Kemampuan Merangkum Tulisan",
      "subtitle": "BAHASA SUNDA",
      "author": "Oleh Al-Baiqi Samaan",
      "grade": "A",
      "image": "assets/project_image1.jpg"
    },
    {
      "title": "Kemampuan Merangkum Tulisan",
      "subtitle": "BAHASA SUNDA",
      "author": "Oleh Al-Baiqi Samaan",
      "grade": "A",
      "image": "assets/project_image2.jpg"
    },
    {
      "title": "Kemampuan Merangkum Tulisan",
      "subtitle": "BAHASA SUNDA",
      "author": "Oleh Al-Baiqi Samaan",
      "grade": "A",
      "image": "assets/project_image3.jpg"
    },
    {
      "title": "Kemampuan Merangkum Tulisan",
      "subtitle": "BAHASA SUNDA",
      "author": "Oleh Al-Baiqi Samaan",
      "grade": "A",
      "image": "assets/project_image4.jpg"
    },
    {
      "title": "Kemampuan Merangkum Tulisan",
      "subtitle": "BAHASA SUNDA",
      "author": "Oleh Al-Baiqi Samaan",
      "grade": "A",
      "image": "assets/project_image5.jpg"
    },
    {
      "title": "Kemampuan Merangkum Tulisan",
      "subtitle": "BAHASA SUNDA",
      "author": "Oleh Al-Baiqi Samaan",
      "grade": "A",
      "image": "assets/project_image1.jpg"
    },
    {
      "title": "Kemampuan Merangkum Tulisan",
      "subtitle": "BAHASA SUNDA",
      "author": "Oleh Al-Baiqi Samaan",
      "grade": "A",
      "image": "assets/project_image2.jpg"
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Portfolio",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          SizedBox(
            height: 40,
            child: IconButton(
              icon: Image.asset('assets/shopping_bag.png', color: Colors.redAccent),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              width: 40,
              child: IconButton(
                icon: Image.asset('assets/notification.png', color: Colors.redAccent),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: _getBodyWidget(),
      floatingActionButton: Positioned(
        bottom: 16,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 100,
            height: 35,
            child: FloatingActionButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageIcon(
                    AssetImage('assets/filter_icon.png'),
                    size: 24,
                    color: Colors.white, // Set the icon color to white
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Filter',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              backgroundColor: Colors.redAccent,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.transparent,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home_filled),
                  SizedBox(height: 4.h),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.wallet_rounded),
                  SizedBox(height: 4.h),
                  Text(
                    'Portfolio',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.file_open_rounded),
                  SizedBox(height: 4.h),
                  Text(
                    'Input',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.person),
                  SizedBox(height: 4.h),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget _getBodyWidget() {
    if (_selectedIndex == 0 || _selectedIndex == 2 || _selectedIndex == 3) {
      return Center(
        child: Container(
          color: Colors.white,
          child: Text(
            '', // Empty string for an empty white screen
            style: TextStyle(fontSize: 24.sp, color: Colors.black),
          ),
        ),
      );
    } else {
      return _buildPortfolioBody();
    }
  }

  Widget _buildPortfolioBody() {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.redAccent,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: 'Poppins',
            ),
            tabs: [
              Tab(text: 'Project'),
              Tab(text: 'Saved'),
              Tab(text: 'Shared'),
              Tab(text: 'Achievement'),
            ],
          ),
        ),
        // Search Bar
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: '  Search a project',
                  filled: true,
                  fillColor: Colors.white70,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  contentPadding: EdgeInsets.only(right: 40.w),
                ),
                onChanged: (value) {
                  setState(() {
                    searchText = value;
                  });
                },
              ),
              Positioned(
                right: 8.w,
                child: Container(
                  width: 35.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: _buildProjectList(),
        ),
      ],
    );
  }

  Widget _buildProjectList() {
    final filteredProjects = projects.where((project) {
      return project['title']!.toLowerCase().contains(searchText.toLowerCase());
    }).toList();

    if (filteredProjects.isEmpty) {
      return Center(child: Text('No projects found.'));
    }

    return ListView.builder(
      itemCount: filteredProjects.length,
      itemBuilder: (context, index) {
        final project = filteredProjects[index];
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            elevation: 5, // Add shadow for elevation
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.grey.shade200,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                children: [
                  Flexible(
                    flex: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        bottomLeft: Radius.circular(12.r),
                      ),
                      child: Image.asset(
                        project['image']!,
                        height: 120.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Flexible(
                    flex: 6, // 70% of the width
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          project['title']!,
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  project['subtitle']!,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                Text(
                                  project['author']!,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: _buildGradeBadge(project['grade']!),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  // Grade badge for the project card
  Widget _buildGradeBadge(String grade) {
    return Container(
      width: 50,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.orangeAccent, // Start color
            Colors.orangeAccent.shade100, // End color
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Center(
        child: Text(
          grade,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

}
