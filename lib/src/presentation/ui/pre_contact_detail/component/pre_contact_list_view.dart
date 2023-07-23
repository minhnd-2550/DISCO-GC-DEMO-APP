import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_stateless_view.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/model/pre_contact_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/pre_contact_detail/component/pre_contact_card.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/pre_contact_detail/pre_contact_detail_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/loading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreContactListView extends BaseStatelessView<PreContactDetailViewModel> {
  const PreContactListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget createView(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final preContact = ref.watch(
          preContactViewModelProvider.select((value) => value.preContact));
      return preContact.when(data: (data) {
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
  ProviderBase<PreContactDetailViewModel> get viewModelProvider =>
      preContactViewModelProvider;

  Widget _createMyListView(
      BuildContext context, List<PreContactViewDataModel> preContact) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          final offerStatus = preContact[index].status;
          return PreContactCard(
            offerStatus: offerStatus,
            remainDays: preContact[index].remainDays,
            deadline: preContact[index].deadline,
            company: preContact[index].company!,
            preContact: preContact[index].preContact!,
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16);
        },
        itemCount: preContact.length,
      ),
    );
  }
}
