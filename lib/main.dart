import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tabbed App',
      home: TabbedApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TabbedApp extends StatelessWidget {
  const TabbedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        body: const TabBarView(
          children: [
            HomeTab(),
            NotificationsTab(),
            ProfileTab(),
          ],
        ),
        bottomNavigationBar: const Material(
          color: Colors.blue, // Màu nền của thanh tab bar
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.notifications)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.blue,
            child: const Column(
              children: [
                Row(
                  children: [
                      Padding(
                      padding: EdgeInsets.only(left: 20, top: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '''Chào, Nguyễn Hoàng Duy      
2121050906 ''',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/avata.jpg'),
                        radius: 30,
                        
                      ),
                      
                      
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.email,
                              size: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              " 2121050906@student.humg.edu.vn",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Danh Mục',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(Icons.calendar_month, size: 40, color: Colors.blue),
                  SizedBox(height: 5),
                  Text('Thời Khóa Biểu', style: TextStyle(fontSize: 14)),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.school_outlined, size: 40, color: Colors.green),
                  SizedBox(height: 5),
                  Text('Xem Điểm', style: TextStyle(fontSize: 14)),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.event_note, size: 40, color: Colors.red),
                  SizedBox(height: 5),
                  Text('Lịch Thi', style: TextStyle(fontSize: 14)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.edit_calendar_outlined,
                    size: 40,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Đăng kí môn",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.money,
                    size: 40,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Học Phí",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.library_books,
                    size: 40,
                    color: Colors.green,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Tin Tức",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.notifications, size: 96),
          Text('Thông báo'),
        ],
      ),
    );
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
          child: Column(
        children: <Widget>[
          Container(
            height: 230,
            width: double.infinity,
            color: Colors.blue,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Cá nhân',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 15),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/avata.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  'Nguyễn Hoàng Duy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("2121050906",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Thông tin chung',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black, // Màu của đường kẻ
                  thickness: 0.5,
                  height: 10, // Độ dày của đường kẻ
                ),
                Row(
                  children: [
                    Text(
                      '''Lớp
  DCCTCT66_08D''',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black, // Màu của đường kẻ
                  thickness: 0.5,
                  height: 10, // Độ dày của đường kẻ
                ),
                Row(
                  children: [
                    Text(
                      '''Ngành
  Công nghệ thông tin''',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black, // Màu của đường kẻ
                  thickness: 0.5,
                  height: 10, // Độ dày của đường kẻ
                ),
                Row(
                  children: [
                    Text(
                      '''Chuyên ngành
  Công nghệ thông tin địa học''',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black, // Màu của đường kẻ
                  thickness: 0.5,
                  height: 10, // Độ dày của đường kẻ
                ),
                Row(
                  children: [
                    Text(
                      '''Khoa
  Công nghệ thông tin''',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black, // Màu của đường kẻ
                  thickness: 0.5,
                  height: 10, // Độ dày của đường kẻ
                ),
                Row(
                  children: [
                    Text(
                      '''Hệ đào tạo
  Chương trình đào tạo Đại Học CDIO 4.5 năm hệ CQ''',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black, // Màu của đường kẻ
                  thickness: 0.5, // Độ dày của đường kẻ
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      '''Cố Vấn
  Vũ Thị Kim Liên''',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Cá nhân',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black, // Màu của đường kẻ
                  thickness: 0.5,
                  height: 10, // Độ dày của đường kẻ
                ),
                Row(
                  children: [
                    Text(
                      '''Ngày sinh
  23/02/2003''',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black, // Màu của đường kẻ
                  thickness: 0.5,
                  height: 10, // Độ dày của đường kẻ
                ),
                Row(
                  children: [
                    Text(
                      '''Giới tính
  Nam''',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black, // Màu của đường kẻ
                  thickness: 0.5,
                  height: 10, // Độ dày của đường kẻ
                ),
                Row(
                  children: [
                    Text(
                      '''Điện thoại
  0368722033''',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black, // Màu của đường kẻ
                  thickness: 0.5,
                  height: 10, // Độ dày của đường kẻ
                ),
                Row(
                  children: [
                    Text(
                      '''Email
  2121050906@student.humg.edu.vn''',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black, // Màu của đường kẻ
                  thickness: 0.5,
                  height: 10, // Độ dày của đường kẻ
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}