import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/assets.gen.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';

class AvatarInput extends StatelessWidget {
  const AvatarInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "プロフィール画像",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const CircleAvatar(
              radius: 8,
              backgroundColor: Colors.blueAccent,
              child: Icon(
                Icons.question_mark,
                color: Colors.white,
                size: 15,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                color: ColorName.primaryStepColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
              child: const Text(
                '任套',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ClipOval(
          child: Assets.images.defaultAvatar.image(
            height: 150.0,
            width: 140.0,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12.0),
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 115,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      'ファイル選択',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              const Expanded(
                child: Text(
                  '選択されていません',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Text(
            "アップロード容量：5MB以下",
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
