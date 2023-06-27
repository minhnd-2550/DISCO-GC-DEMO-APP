import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/offers/component/offer_card.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/offers/component/offers_filter.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_page.dart';

const offersPageRoutes = '/offers';

class OffersPage extends StatefulWidget {
  const OffersPage({Key? key}) : super(key: key);

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  List<String> selectedValues = [];

  @override
  Widget build(BuildContext context) {
    final List<OffersFilterModel> options = [
      OffersFilterModel(
        value: 'considering',
        icon: Icons.add_shopping_cart,
        title: '検討中',
      ),
      OffersFilterModel(
        value: 'unread',
        icon: Icons.markunread,
        title: '未読',
      ),
      OffersFilterModel(
        value: 'pre_contact_user',
        icon: Icons.add_shopping_cart,
        title: 'プレコンタクト',
      ),
      OffersFilterModel(
        value: 'user_offer',
        icon: Icons.file_copy,
        title: '応募オファー',
      ),
    ];

    void onCheck(value) {
      if (selectedValues.contains(value)) {
        setState(() {
          selectedValues.remove(value);
        });
      } else {
        setState(() {
          selectedValues.add(value);
        });
      }
    }

    return BasePage(
      children: [
        const SizedBox(
          height: 8.0,
        ),
        const Text(
          "オファー一覧",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              height: 1.8,
              color: Colors.black),
        ),
        const Text(
          "企業からのオファーがこちらに表示されます。オファーには締め切り期日があります。",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.0,
              height: 1.8,
              color: Colors.black),
        ),
        const Text(
          "オファーの返答はできるだけ早めに判断いただくことをおすすめします。",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.0,
              height: 1.8,
              color: Colors.black),
        ),
        const Text(
          "なお、辞退したオファー、締切が過ぎたオファーはリストから削除されますので、ご注意ください。",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.0,
              height: 1.8,
              color: Colors.black),
        ),
        const SizedBox(
          height: 24.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: OffersFilter(
            options: options,
            onCheck: onCheck,
            selectedValues: selectedValues,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 4,
            itemBuilder: (context, index) {
              final offerTypes =
                  index % 2 == 0 ? OfferTypes.offer : OfferTypes.preContact;
              final contractExpired = index % 2 == 1;
              final offerStatus =
                  index % 2 == 0 ? OfferStatuses.applied : OfferStatuses.isRead;
              return OfferCard(
                contractExpired: contractExpired,
                offerTypes: offerTypes,
                offerStatus: offerStatus,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16);
            },
          ),
        )
      ],
    );
  }
}
