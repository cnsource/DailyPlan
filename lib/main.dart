import 'package:ert/page/cardlib/index.dart';
import 'package:ert/page/profile/index.dart';
import 'package:ert/page/timeline/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: PageViewExample()),
    );
  }
}

class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  _PageViewExampleState createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  children: [TimelinePage(), CardLib(), ProfilePage()],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withAlpha(60), // 阴影颜色
                      spreadRadius: 2, // 阴影扩散半径
                      blurRadius: 5, // 阴影模糊半径
                      offset: const Offset(0, -3), // 阴影偏移量，负数表示向上
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _currentPage = 0;
                        });
                        _pageController.jumpToPage(0);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(16), // 调整这个值来扩大点击区域
                        child: Icon(
                          Icons.home,
                          size: 24,
                          color: _currentPage == 0 ? Colors.blue : null,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _currentPage = 1;
                        });
                        _pageController.jumpToPage(1);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(16), // 调整这个值来扩大点击区域
                        child: Icon(
                          Icons.search,
                          size: 24,
                          color: _currentPage == 1 ? Colors.blue : null,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _currentPage = 2;
                        });
                        _pageController.jumpToPage(2);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(16), // 调整这个值来扩大点击区域
                        child: Icon(
                          Icons.person,
                          size: 24,
                          color: _currentPage == 2 ? Colors.blue : null,
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
