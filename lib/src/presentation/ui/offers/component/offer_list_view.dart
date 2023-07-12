import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_stateless_view.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/model/offer_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/offers/component/offer_card.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/offers/offers_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/loading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OfferListView extends BaseStatelessView<OffersViewModel> {
  const OfferListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget createView(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final offers =
          ref.watch(offersViewModelProvider.select((value) => value.offers));
      return offers.when(data: (data) {
        return _createMyListView(context, data);
      }, loading: () {
        return const Loading();
      }, error: (e, s) {
        return const SizedBox();
      });
    });
  }

  @override
  void pageErrorRetry(BuildContext context, WidgetRef ref) {
    ref.watch(offersViewModelProvider.notifier).getOffers(retry: true);
  }

  @override
  ProviderBase<OffersViewModel> get viewModelProvider =>
      offersViewModelProvider;

  Widget _createMyListView(
      BuildContext context, List<OfferViewDataModel> offers) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          final contractExpired = offers[index].contractExpired;
          final offerTypes = offers[index].offerType;
          final offerStatus = offers[index].status;
          return OfferCard(
            contractExpired: contractExpired,
            offerTypes: offerTypes,
            offerStatus: offerStatus,
            applied: offers[index].applied,
            remainDays: offers[index].remainDays,
            sendTime: offers[index].sendTime,
            company: offers[index].company!,
            details: offers[index].details!,
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16);
        },
        itemCount: offers.length,
      ),
    );
  }
}
