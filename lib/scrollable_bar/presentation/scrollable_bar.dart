import 'dart:developer';

import 'package:ecommercelayout/scrollable_bar/presentation/pages/over_view_page.dart';
import 'package:ecommercelayout/scrollable_bar/presentation/pages/product_details_page.dart';
import 'package:ecommercelayout/scrollable_bar/presentation/pages/rating_page.dart';
import 'package:ecommercelayout/scrollable_bar/presentation/pages/recommendations_page.dart';
import 'package:flutter/material.dart';

class ScrollableBar extends StatefulWidget {
  const ScrollableBar({Key? key}) : super(key: key);

  @override
  State<ScrollableBar> createState() => _ScrollableBarState();
}

class _ScrollableBarState extends State<ScrollableBar> {
  ScrollController scrollController = ScrollController();
  bool onScroll = false;
  int currentIndex = 0;
  //int cardIndex = 0;
  // List<Widget> pages = [
  //   const OverViewPage(),
  //   const RatingPage(),
  //   const ProductDetailsPage(),
  //   const RecommendationPage(),
  // ];
  final sectionKey1 = GlobalKey();
  final sectionKey2 = GlobalKey();
  final sectionKey3 = GlobalKey();
  final sectionKey4 = GlobalKey();
  final textBar1 = GlobalKey();
  final textBar2 = GlobalKey();
  final textBar3 = GlobalKey();
  final textBar4 = GlobalKey();

  @override
  void initState() {
    scrollController.addListener(() {
      setState(() {
        onScroll = scrollController.offset > 80 ? true : false;
        // currentIndex = scrollController.offset > 800
        //     ? 1
        //     : scrollController.offset > 900
        //         ? 2
        //         : scrollController.offset >= 1500
        //             ? 3
        //             : 0;
      });
    });
    // if(sectionKey3.currentWidget!=null){

    // }
    super.initState();
  }

  void _getWidgetInfo() {
    final RenderBox renderBox =
        sectionKey1.currentContext?.findRenderObject() as RenderBox;

    final Size size = renderBox.size; // or _widgetKey.currentContext?.size
    log('Size: ${size.width}, ${size.height}');

    final Offset offset = renderBox.localToGlobal(Offset.zero);
    log('Offset: ${offset.dx}, ${offset.dy}');
    log('Position: ${(offset.dx + size.width) / 2}, ${(offset.dy + size.height) / 2}');
  }

  Future scrollToSection1() async {
    final context = sectionKey1.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.ease,
        alignment: 0,
        duration: const Duration(milliseconds: 800));
  }

  Future scrollToSection2() async {
    final context = sectionKey2.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.ease,
        alignment: 0,
        duration: const Duration(milliseconds: 800));
  }

  Future scrollToSection4() async {
    final context = sectionKey4.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.ease,
        alignment: 0,
        duration: const Duration(milliseconds: 800));
  }

  Future scrollToSection3() async {
    final context = sectionKey3.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.ease,
        alignment: 0,
        duration: const Duration(milliseconds: 800));
  }

  Future scrollToTextBar1() async {
    final context = textBar1.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.ease,
        alignment: 0.5,
        duration: const Duration(milliseconds: 700));
  }

  Future scrollToTextBar2() async {
    final context = textBar2.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.ease,
        alignment: 0.5,
        duration: const Duration(milliseconds: 700));
  }

  Future scrollToTextBar3() async {
    final context = textBar3.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.ease,
        alignment: 0.5,
        duration: const Duration(milliseconds: 700));
  }

  Future scrollToTextBar4() async {
    final context = textBar4.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.ease,
        alignment: 0.5,
        duration: const Duration(milliseconds: 700));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: onScroll ? 2 : 0,
          leading: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Colors.black,
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize:
                onScroll ? const Size.fromHeight(35) : const Size.fromHeight(0),
            child: Visibility(
              visible: onScroll,
              replacement: const SizedBox.shrink(),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 6),
                height: 35,
                child: Align(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        key: textBar1,
                        child: TextBar(
                          text: "OverView",
                          currentIndex: currentIndex,
                          tabIndex: 0,
                          onTap: () {
                            //_getWidgetInfo();
                            scrollToSection1();
                            setState(() {
                              currentIndex = 0;
                            });
                          },
                        ),
                      ),
                      Container(
                        key: textBar2,
                        child: TextBar(
                          text: "Ratings",
                          currentIndex: currentIndex,
                          tabIndex: 1,
                          onTap: () {
                            _getWidgetInfo();
                            scrollToSection2();
                            setState(() {
                              currentIndex = 1;
                            });
                          },
                        ),
                      ),
                      Container(
                        key: textBar3,
                        child: TextBar(
                          text: "Product Details",
                          currentIndex: currentIndex,
                          tabIndex: 2,
                          onTap: () {
                            _getWidgetInfo();
                            scrollToSection3();
                            setState(() {
                              currentIndex = 2;
                            });
                          },
                        ),
                      ),
                      Container(
                        key: textBar4,
                        child: TextBar(
                          text: "Recommendations",
                          currentIndex: currentIndex,
                          tabIndex: 3,
                          onTap: () {
                            _getWidgetInfo();
                            scrollToSection4();
                            setState(() {
                              currentIndex = 3;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              GestureDetector(
                // onVerticalDragDown: (value) {
                //   setState(() {
                //     scrollToTextBar1();
                //   });
                // },
                child: Container(
                  key: sectionKey1,
                  child: const OverViewPage(),
                ),
              ),
              GestureDetector(
                // onVerticalDragDown: (value) {
                //   setState(() {
                //     scrollToTextBar2();
                //   });
                // },
                child: Container(
                  key: sectionKey2,
                  child: const RatingPage(),
                ),
              ),
              GestureDetector(
                onVerticalDragStart: (value) {
                  setState(() {
                    scrollToTextBar3();
                  });
                },
                child: Container(
                  key: sectionKey3,
                  child: const ProductDetailsPage(),
                ),
              ),
              GestureDetector(
                // onVerticalDragDown: (value) {
                //   setState(() {
                //     scrollToTextBar4();
                //   });
                // },
                child: Container(
                  key: sectionKey4,
                  child: const RecommendationPage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextBar extends StatefulWidget {
  const TextBar(
      {Key? key,
      required this.text,
      required this.currentIndex,
      required this.tabIndex,
      required this.onTap})
      : super(key: key);
  final String text;
  final int currentIndex, tabIndex;
  final VoidCallback onTap;

  @override
  State<TextBar> createState() => _TextBarState();
}

class _TextBarState extends State<TextBar> {
  //int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //key: ,
      onVerticalDragDown: (value) {},
      onTap: () {
        setState(() {
          Scrollable.ensureVisible(
            context,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOut,
            alignment: 0.5,
          );
        });
        widget.onTap();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 18),
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: 18,
              color: widget.currentIndex == widget.tabIndex
                  ? const Color(0xffFC6701)
                  : Colors.black87),
        ),
      ),
    );
  }
}
