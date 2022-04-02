import 'package:abubakar_portfolio/modules/project_detail/widgets/tech_stack_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import '../side_menu/side_menu.dart';

class ProjectsDetailsView extends StatefulWidget {
  const ProjectsDetailsView({Key? key}) : super(key: key);

  @override
  State<ProjectsDetailsView> createState() => _ProjectsDetailsViewState();
}

class _ProjectsDetailsViewState extends State<ProjectsDetailsView> {
  CarouselController? buttonCarouselController = CarouselController();

  // bool? cardIsHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu))),
            ),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(flex: 2, child: SideMenu()),
              const SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Text('Hi How Are you')

                      // ///--------Widget SlideShow
                      // Column(
                      //   children: [
                      //     CarouselSlider(
                      //       options: CarouselOptions(
                      //         height: 400,
                      //         aspectRatio: 16 / 9,
                      //         viewportFraction: 0.8,
                      //         initialPage: 0,
                      //         enableInfiniteScroll: true,
                      //         // reverse: true,
                      //         autoPlay: true,
                      //         autoPlayInterval: const Duration(seconds: 10),
                      //         autoPlayAnimationDuration:
                      //             const Duration(milliseconds: 800),
                      //         autoPlayCurve: Curves.fastOutSlowIn,
                      //         enlargeCenterPage: true,
                      //         // onPageChanged: callbackFunction,
                      //         scrollDirection: Axis.horizontal,
                      //       ),
                      //       items: [1, 2, 3, 4, 5].map((i) {
                      //         return Builder(
                      //           builder: (BuildContext context) {
                      //             return Container(
                      //               width: MediaQuery.of(context).size.width,
                      //               margin: const EdgeInsets.symmetric(
                      //                   horizontal: 5.0),
                      //               decoration: const BoxDecoration(
                      //                   // color: Colors.amber,
                      //                   image: DecorationImage(
                      //                       image: AssetImage(
                      //                         'assets/images/bg.jpeg',
                      //                       ),
                      //                       fit: BoxFit.fill)),
                      //               // child: Text(
                      //               //   'text $i',
                      //               //   style: const TextStyle(fontSize: 16.0),
                      //               // ),
                      //             );
                      //           },
                      //         );
                      //       }).toList(),
                      //     ),
                      //     TextButton(
                      //       onPressed: () => buttonCarouselController!.nextPage(
                      //           duration: const Duration(milliseconds: 100),
                      //           curve: Curves.linear),
                      //       child: const Text('→'),
                      //     )
                      //   ],
                      // ),

                      ///--------Project Highlights
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Chat/Messaging App Light and Dark Theme - Flutter UI',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                          Row(
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    '> Chat/Messaging App Light and Dark Theme - Flutter UI',
                                    style: TextStyle(height: 2),
                                  ),
                                  Text(
                                    '> Chat/Messaging App Light and Dark Theme - Flutter UI',
                                    style: TextStyle(height: 2),
                                  ),
                                  Text(
                                    '> Chat/Messaging App Light and Dark Theme - Flutter UI',
                                    style: TextStyle(height: 2),
                                  ),
                                  Text(
                                    '> Chat/Messaging App Light and Dark Theme - Flutter UI',
                                    style: TextStyle(height: 2),
                                  ),
                                  Text(
                                    '> Chat/Messaging App Light and Dark Theme - Flutter UI',
                                    style: TextStyle(height: 2),
                                  ),
                                  Text(
                                    '> Chat/Messaging App Light and Dark Theme - Flutter UI',
                                    style: TextStyle(height: 2),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 50,
                      ),

                      ///-------Technology Stack Widget
                      TechStackWidget()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
