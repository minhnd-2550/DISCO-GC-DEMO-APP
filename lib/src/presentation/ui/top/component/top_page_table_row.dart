import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/extension/build_context.dart';
import 'package:flutter_clean_architecture/src/data/model/event_reservations_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/seminar/seminar_enter.dart';

class TopPageTableRow extends StatelessWidget {
  final EventReservationsDataModel dataModel;
  const TopPageTableRow({Key? key, required this.dataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contentName = dataModel.content! + "/" + dataModel.name!;

      return Table(
        border: TableBorder.all(),
        children: [

        ],
      );
  }

  void _redirect(BuildContext context, pageRoutes) async {
    await Navigator.pushNamed(context, pageRoutes);
  }

  void _goToSeminarEnter(BuildContext context) async {
    await Navigator.pushNamed(context, seminarEnterPageRoutes);
  }
}
