import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/block_info_layout.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/button_with_icon.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/information_line.dart';

class EducationBackground extends StatelessWidget {
  const EducationBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlockInfoLayout(
        icon: const Icon(
          Icons.school,
          color: Colors.white,
          size: 20.0,
        ),
        title: "学歴",
        child: Container(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _createEducationBackground(),
              const ButtonWithIcon(text: "学歴を編集する", icons: Icons.edit)
            ],
          ),
        ));
  }

  Widget _createEducationBackground() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const InformationLine(
          label: "学校名",
          icon: Icons.school,
          seen: true,
          value: "BRITISH COLUMBIA INSTITUTE OF TECHNOLOGY",
        ),
        const InformationLine(
          label: "学校所在地",
          icon: Icons.location_on,
          seen: true,
          value: "British Columbia / カナダ",
        ),
        const SizedBox(height: 20.0),
        const Divider(
          thickness: 1.0,
          color: Color(0xFFcdc5e3),
        ),
        const SizedBox(height: 20.0),
        Container(
          padding: const EdgeInsets.only(left: 25.0),
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Column(
                children: const [
                  InformationLine(
                    label: "専攻カテゴリー",
                    icon: Icons.account_balance,
                    seen: true,
                    value: "生物/化学/薬学系",
                  ),
                  InformationLine(
                    label: "専攻",
                    icon: Icons.account_balance,
                    seen: true,
                    value: "生物工学 (Bioengineering)",
                  ),
                  InformationLine(
                    label: "専攻正式名称",
                    icon: Icons.account_balance,
                    seen: true,
                    value: "trường 1",
                  ),
                ],
              ),
              const InformationLine(
                label: "在籍ステータス",
                icon: Icons.badge,
                seen: true,
                value: "交換生",
              ),
              const InformationLine(
                label: "学位",
                icon: Icons.military_tech,
                seen: true,
                value: "-",
              ),
              const InformationLine(
                label: "GPA",
                icon: Icons.edit,
                seen: true,
                value: "-",
              ),
              const InformationLine(
                label: "在籍期間",
                icon: Icons.event_note,
                seen: true,
                value: "2022年6月~2022年12月 (卒業)",
              ),
              const InformationLine(
                label: "力を入れたこと",
                icon: Icons.edit,
                seen: true,
                value: "1323123",
              ),
            ],
          ),
        )
      ],
    );
  }
}
