import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/master_data.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/dynamic_form_field_label.dart';

class MultiLevelPicker extends StatefulWidget {
  const MultiLevelPicker({Key? key}) : super(key: key);

  @override
  State<MultiLevelPicker> createState() => _MultiLevelPickerState();
}

class _MultiLevelPickerState extends State<MultiLevelPicker> {
  ListValue? selectedContinent;
  ListValue? selectedNation;
  late TextEditingController selectedNationController;
  late FocusNode selectedNationFocusNode;

  @override
  void initState() {
    super.initState();
    selectedNationController = TextEditingController();

    selectedNationFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();

    selectedNationController.dispose();

    selectedNationFocusNode.dispose();
  }

  List<String> continents = [
    'Africa',
    'Asia',
    'Europe',
    'North America',
    'South America',
    'Oceania',
  ];

  Map<String, List<String>> nations = {
    'Africa': [
      'Nigeria',
      'Egypt',
      'Ethiopia',
      'Democratic Republic of the Congo',
      'South Africa',
    ],
    'Asia': [
      'China',
      'India',
      'Indonesia',
      'Pakistan',
      'Bangladesh',
    ],
    'Europe': [
      'Russia',
      'Germany',
      'United Kingdom',
      'France',
      'Italy',
    ],
    'North America': [
      'USA',
      'Canada',
      'Mexico',
      'Cuba',
      'Dominican Republic',
    ],
    'South America': [
      'Brazil',
      'Colombia',
      'Argentina',
      'Peru',
      'Venezuela',
    ],
    'Oceania': [
      'Australia',
      'Papua New Guinea',
      'New Zealand',
      'Fiji',
      'Solomon Islands',
    ],
  };

  void _selectContinent(ListValue continent) {
    if (continent.key == selectedContinent?.key) {
      setState(() {
        selectedContinent = null;
      });
    } else {
      setState(() {
        selectedContinent = continent;
      });
    }
  }

  void _selectNation(ListValue nation) {
    setState(() {
      selectedNation = nation;
      selectedNationController.text = nation.value;
    });
    Navigator.pop(context, {
      'continent': selectedContinent,
      'nation': selectedNation,
    });
    selectedNationFocusNode.unfocus();
  }

  void _onTap() {
    selectedNationFocusNode.requestFocus();
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: locationCategory.length,
                  itemBuilder: (BuildContext context, int index) {
                    ListValue continent = locationCategory[index];
                    List<ListValue> filter = [];
                    filter.addAll(location);
                    filter.retainWhere((ListValue element) {
                      return element.m_location_category_id == continent.key;
                    });
                    return ExpansionTile(
                      initiallyExpanded:
                          selectedContinent?.key == continent.key,
                      title: Text(
                        continent.value,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: filter
                          .map(
                            (nation) => ListTile(
                              title: Text(nation.value),
                              onTap: () => _selectNation(nation),
                              selected: selectedNation == nation,
                            ),
                          )
                          .toList(),
                      onExpansionChanged: (bool isExpanded) {
                        _selectContinent(continent);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DynamicFormFieldLabel(
        labelText: "母国以外、滞在したことのある国・地域",
        required: true,
        child: TextFormField(
          controller: selectedNationController,
          focusNode: selectedNationFocusNode,
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.public),
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              hintText: '滞在経験国',
              hintStyle: const TextStyle(fontSize: 14.0)),
          readOnly: true,
          onTap: _onTap,
        ));
  }
}
