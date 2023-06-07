import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/footer.dart';

const offersPageRoutes = '/';

class BasePage extends StatelessWidget {
  final List<Widget> children;
  const BasePage({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF26BFA1),
                  Color(0xFF1AA1A3),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.white,
            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          elevation: 0,
          title: const SizedBox(
            width: double.infinity,
            child: Text(
              'GlobalCareer.com',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.lock,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          blurRadius: 4,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 4.0),
                          child: IconButton(
                            iconSize: 35.0,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu,
                              color: ColorName.primaryUserColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 4.0),
                          child: IconButton(
                            iconSize: 35.0,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.send,
                              color: ColorName.primaryUserColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 4.0),
                          child: IconButton(
                            iconSize: 35.0,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.bookmarks,
                              color: ColorName.primaryUserColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 4.0),
                          child: IconButton(
                            iconSize: 35.0,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.volume_up_rounded,
                              color: ColorName.primaryUserColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 4.0),
                          child: IconButton(
                            iconSize: 35.0,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.heart_broken,
                              color: ColorName.primaryUserColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 4.0),
                          child: IconButton(
                            iconSize: 35.0,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.person,
                              color: ColorName.primaryUserColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: IconButton(
                            iconSize: 35.0,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.book,
                              color: ColorName.primaryUserColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ...children
                ],
              ),
            ),
            const Footer(),
          ],
        ));
  }
}
