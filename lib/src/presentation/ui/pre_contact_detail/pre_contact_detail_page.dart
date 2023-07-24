import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/pre_contact_detail/component/pre_contact_list_view.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_page.dart';

const preContactDetailPageRoutes = '/pre-contact-detail';
// const preContactDetailPageRoutes = '/';

class PreContactDetailPage extends StatefulWidget {
  const PreContactDetailPage({Key? key}) : super(key: key);

  @override
  State<PreContactDetailPage> createState() => _PreContactDetailPageState();
}

class _PreContactDetailPageState extends State<PreContactDetailPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return BasePage(
      automaticallyImplyLeading: true,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Image.network(
                'https://placehold.co/400x400/png',
                width: 50.0,
                height: 50.0,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 12,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Le Thi Ngan (Toan edit)1 toan toan toan",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ABC (Toan edit)",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(153, 153, 153, 1)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 44,
          child: TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              indicatorColor: const Color(0xff26bfa1),
              controller: tabController,
              tabs: const [
                Tab(
                  icon: Icon(
                    Icons.send,
                    color: Color(0xff26bfa1),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.file_copy,
                    color: Color(0xff26bfa1),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.forum,
                    color: Color(0xff26bfa1),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.insert_invitation,
                    color: Color(0xff26bfa1),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.domain,
                    color: Color(0xff26bfa1),
                  ),
                ),
              ]),
        ),
        SizedBox(
          width: double.maxFinite,
          height: 550,
          child: TabBarView(controller: tabController, children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.send,
                        size: 18,
                        color: Color(0xFF26bfa1),
                      ),
                      Text(
                        "プレコンタクトオファー",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF26bfa1)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const PreContactListView()
                ],
              ),
            ),
            const Text("2"),
            const Text("2"),
            const Text("2"),
            const Text("3")
          ]),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
