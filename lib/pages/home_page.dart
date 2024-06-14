import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_animation_book/db/book_list.dart';
import 'package:flutter_animation_book/widgets/appbar_widget.dart';
import 'package:flutter_animation_book/widgets/bottombar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageCtrl = PageController();
  ValueNotifier<double> scrollNotifier = ValueNotifier(0.0);

  void _listener() {
    scrollNotifier.value = pageCtrl.page!;
  }

  @override
  void initState() {
    pageCtrl.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    pageCtrl.removeListener(_listener);
    pageCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/bg.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 30.0,
              ),
              child: Column(
                children: [
                  const AppBarWidget(),
                  Expanded(
                    child: ValueListenableBuilder<double>(
                        valueListenable: scrollNotifier,
                        builder: (context, value, child) {
                          return PageView.builder(
                            controller: pageCtrl,
                            itemCount: books.length,
                            itemBuilder: (
                              BuildContext context,
                              int index,
                            ) {
                              final percentaje = index - value;
                              final rotation = percentaje.clamp(0.0, 1.0);
                              final fixRotation = pow(rotation, 0.35);
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(),
                                  Container(
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 260,
                                          height: 390,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black38,
                                                blurRadius: 20.0,
                                                offset: Offset(5.0, 5.0),
                                                spreadRadius: 10.0,
                                              )
                                            ],
                                          ),
                                        ),
                                        Transform(
                                          alignment: Alignment.centerLeft,
                                          transform: Matrix4.identity()
                                            ..setEntry(3, 2, 0.001)
                                            ..rotateY(1.8 * fixRotation)
                                            ..translate(
                                              -rotation * size.width * 0.8,
                                            )
                                            ..scale(1 + rotation),
                                          child: Image.asset(
                                            books[index].image,
                                            fit: BoxFit.cover,
                                            width: 260,
                                            height: 390,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Opacity(
                                      opacity: 1 - rotation,
                                      child: BottomBarWidget(
                                        title: books[index].title,
                                        subtitle: books[index].subtitle,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
