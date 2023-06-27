import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/top/top_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/footer.dart';

const offersPageRoutes = '/offers';

class ListMenu {
  final IconData icon;
  final int notiCount;

  ListMenu(this.icon, this.notiCount);
}

class BasePage extends StatelessWidget {
  final List<Widget> children;
  const BasePage({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double iconWidth = screenWidth / 8;
    final List<ListMenu> listIconMenu = [
      ListMenu(Icons.home, 0),
      ListMenu(Icons.view_list, 3),
      ListMenu(Icons.send, 0),
      ListMenu(Icons.file_copy, 0),
      ListMenu(Icons.campaign, 0),
      ListMenu(Icons.favorite, 0),
      ListMenu(Icons.account_circle, 0),
      ListMenu(Icons.local_library, 0),
    ];
    return Scaffold(
        backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
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
                        for (int i = 0; i < 8; i++)
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 4.0),
                                child: IconButton(
                                  iconSize: iconWidth * 0.6 > 35
                                      ? 35
                                      : iconWidth * 0.5,
                                  onPressed: () {
                                    String path = topPageRoutes;
                                    if (i == 1) {
                                      path = offersPageRoutes;
                                    }
                                    _redirect(context, path);
                                  },
                                  icon: Icon(
                                    listIconMenu[i].icon,
                                    color: ColorName.primaryUserColor,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 0,
                                child: listIconMenu[i].notiCount > 0
                                    ? Container(
                                        width: 16.0,
                                        height: 18.0,
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Text(
                                            listIconMenu[i]
                                                .notiCount
                                                .toString(),
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(),
                              )
                            ],
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

  void _redirect(BuildContext context, pageRoutes) async {
    await Navigator.pushNamed(context, pageRoutes);
  }
}
