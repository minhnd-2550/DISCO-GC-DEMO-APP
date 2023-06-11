import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/block_info_layout.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/button_with_icon.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/information_line.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/un_seen_text.dart';

class BasicInformation extends StatelessWidget {
  const BasicInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlockInfoLayout(
      icon: const Icon(
        Icons.person,
        color: Colors.white,
        size: 20.0,
      ),
      title: "基本情報",
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://placehold.co/600x400/png'),
                        fit: BoxFit.contain,
                      )),
                ),
                const Text(
                  "Nguyen Duc Minh",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UnSeenText(text: 'この部分は応募するまで企業からは見えません'),
                const SizedBox(
                  height: 20.0,
                ),
                _createBasicInfor(),
                const ButtonWithIcon(text: "基本情報を編集する", icons: Icons.edit)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _createBasicInfor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        InformationLine(
          label: "敬称",
          icon: Icons.person,
          seen: true,
          value: "Mr.",
        ),
        InformationLine(
          label: "氏名",
          icon: Icons.person,
          seen: false,
          value: "Nguyen Duc Minh",
        ),
        InformationLine(
          label: "氏名（カタカナ）",
          icon: Icons.person,
          seen: false,
          value: "Nguyen Duc Minh",
        ),
        InformationLine(
          label: "ニックネーム",
          icon: Icons.person,
          seen: true,
          value: "minhnd1",
        ),
        InformationLine(
          label: "現住所",
          icon: Icons.home,
          seen: false,
          value: "-",
        ),
        InformationLine(
          label: "連絡先TEL",
          icon: Icons.phone_iphone,
          seen: false,
          value: "(+1)0243222222",
        ),
        InformationLine(
          label: "メールアドレス",
          icon: Icons.email,
          seen: false,
          value: "nguyen.duc.minh+20001@sun-asterisk.com",
        ),
        InformationLine(
          label: "労働許可 / ビザ",
          icon: Icons.content_copy,
          seen: true,
          value: "カナダ：永住権",
        ),
        InformationLine(
          label: "生年月日",
          icon: Icons.cake,
          seen: true,
          value: "2002年09月11日",
        ),
      ],
    );
  }
}
