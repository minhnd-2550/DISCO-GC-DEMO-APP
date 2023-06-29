import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/card_info.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/triangle.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/footer.dart';

const profilePageRoute = "/profile";

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0,
        title: const Text(
          'GlobalCareer.com',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontStyle: FontStyle.italic,
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
            child: SingleChildScrollView(
              child: Container(
                color: Colors.grey[300],
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            color: Colors.teal[300],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: Colors.teal[300],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmarks,
                            color: Colors.teal[300],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.volume_up_rounded,
                            color: Colors.teal[300],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.heart_broken,
                            color: Colors.teal[300],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person,
                            color: Colors.teal[300],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.book,
                            color: Colors.teal[300],
                          ),
                        ),
                      ],
                    ),
                    AspectRatio(
                      aspectRatio: 1,
                      child: SizedBox(
                        width: double.infinity,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Container(
                              color: Colors.white,
                            ),
                            ClipPath(
                              clipper: Triangle(),
                              child: Container(
                                color: Colors.red,
                              ),
                            ),
                            Positioned(
                              right: 12.0,
                              top: 12.0,
                              child: Container(
                                color: Colors.blue,
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    'こんにちはこんにちはこんにちは',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 48.0,
                              left: 16.0,
                              right: 16.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Center(
                                    child: CircleAvatar(
                                      radius: 80,
                                      backgroundImage: NetworkImage(
                                          'https://nguoinoitieng.tv/images/nnt/102/0/bggd.jpg'),
                                    ),
                                  ),
                                  const SizedBox(height: 12.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Expanded(
                                        flex: 2,
                                        child: Text(
                                          'huyen+1-こんにちはこんにちはこんにちは',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(width: 16.0),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          '(にちID): 123456789',
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16.0),
                                  Center(
                                    child: Text(
                                      'トラブルシューティング：',
                                      style: TextStyle(
                                        color: Colors.grey[400],
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 48.0,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        border:
                                            Border.all(color: Colors.redAccent),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(16.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const Text(
                                              'ボタンボタンボタンボタン',
                                              style: TextStyle(
                                                  color: Colors.redAccent,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(width: 8.0),
                                            Container(
                                              width: 24,
                                              height: 24,
                                              decoration: const BoxDecoration(
                                                color: Colors.redAccent,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.calendar_month_rounded,
                                            color: Colors.grey[400],
                                            size: 14.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'カレンダー',
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    border: Border.all(
                                      color: Colors.purple, // Set the border color
                                      width: 1.0, // Set the border width
                                    ),
                                    shape: BoxShape.rectangle, // Set the desired shape of the border (optional)
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.person,
                                      color: Colors.white,

                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.purple, // Set the border color
                                      width: 1.0, // Set the border width
                                    ),
                                    shape: BoxShape.rectangle, // Set the desired shape of the border (optional)
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.school,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.purple, // Set the border color
                                      width: 1.0, // Set the border width
                                    ),
                                    shape: BoxShape.rectangle, // Set the desired shape of the border (optional)
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.house_rounded,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.purple, // Set the border color
                                      width: 1.0, // Set the border width
                                    ),
                                    shape: BoxShape.rectangle, // Set the desired shape of the border (optional)
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.star,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.purple, // Set the border color
                                      width: 1.0, // Set the border width
                                    ),
                                    shape: BoxShape.rectangle, // Set the desired shape of the border (optional)
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.sticky_note_2,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.purple, // Set the border color
                                      width: 1.0, // Set the border width
                                    ),
                                    shape: BoxShape.rectangle, // Set the desired shape of the border (optional)
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.emoji_emotions,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12.0),
                          Row(
                            children: const [
                              SizedBox(width: 14.0),
                              Icon(
                                Icons.person,
                                color: Colors.purple,
                                size: 18.0,
                              ),
                              Text(
                                '人物情報',
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 12.0),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Column(
                              children: const [
                                CardInfo(
                                  Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 18.0,
                                  ),
                                  '名前',
                                  'huyen+1'
                                ),
                                SizedBox(height: 8.0),
                                CardInfo(
                                    Icon(
                                      Icons.house,
                                      color: Colors.white,
                                      size: 18.0,
                                    ),
                                    '住所',
                                    '家番号 1111、通り 1111'
                                ),
                                SizedBox(height: 8.0),
                                CardInfo(
                                    Icon(
                                      Icons.phone_android,
                                      color: Colors.white,
                                      size: 18.0,
                                    ),
                                    '電話番号',
                                    '(+81) 1111 1111'
                                ),
                                SizedBox(height: 8.0),
                                CardInfo(
                                    Icon(
                                      Icons.email,
                                      color: Colors.white,
                                      size: 18.0,
                                    ),
                                    'email',
                                    'vu.khanh.huyen+1@sun-asterisk.com'
                                ),
                                SizedBox(height: 8.0),
                                CardInfo(
                                    Icon(
                                      Icons.cake,
                                      color: Colors.white,
                                      size: 18.0,
                                    ),
                                    '誕生日',
                                    '2022年03月01'
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24.0),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.teal[300],
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(8.0)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.edit,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '情報を編集する',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 24.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
