import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';

class OffersFilterModel {
  final String title;
  final String value;
  final IconData icon;

  OffersFilterModel({
    required this.title,
    required this.value,
    required this.icon,
  });
}

class OffersFilter extends StatefulWidget {
  final List<OffersFilterModel> options;
  final List<String> selectedValues;
  final Function onCheck;
  const OffersFilter(
      {Key? key,
      required this.options,
      required this.onCheck,
      required this.selectedValues})
      : super(key: key);

  @override
  State<OffersFilter> createState() => _OffersFilterState();
}

class _OffersFilterState extends State<OffersFilter> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: List.generate(
          widget.options.length,
          (index) => buildCheckboxButton(index, widget.onCheck),
        ),
      ),
    );
  }

  Widget buildCheckboxButton(int index, Function onCheckbox) {
    return InkWell(
      onTap: () {
        onCheckbox(widget.options[index].value);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.selectedValues.contains(widget.options[index].value)
                ? ColorName.primaryUserColor
                : const Color.fromRGBO(204, 204, 204, 1.0),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(15.0),
          color: widget.selectedValues.contains(widget.options[index].value)
              ? ColorName.primaryUserColor
              : Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              widget.options[index].icon,
              size: 18.0,
              color: widget.selectedValues.contains(widget.options[index].value)
                  ? Colors.white
                  : Colors.grey,
            ),
            const SizedBox(width: 8.0),
            Text(
              widget.options[index].title,
              style: TextStyle(
                fontSize: 10.0,
                color:
                    widget.selectedValues.contains(widget.options[index].value)
                        ? Colors.white
                        : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
