import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/dynamic_form_field_label.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/text_description.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/tree_select_dropdown.dart';

class RegistrationInfo extends StatefulWidget {
  const RegistrationInfo(BuildContext context, {Key? key}) : super(key: key);

  @override
  State<RegistrationInfo> createState() => _RegistrationInfoState();
}

class _RegistrationInfoState extends State<RegistrationInfo> {
  bool _checkNoCountry = false;
  String? _selectedCountry;
  bool _checkUndecided = false;
  TextEditingController startDateInput = TextEditingController();
  TextEditingController endDateInput = TextEditingController();

  void _showStartDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      setState(() {
        startDateInput.text = formattedDate;
      });
    }
  }

  void _showEndDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      setState(() {
        startDateInput.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double cWidth = MediaQuery.of(context).size.width * 0.7;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF874da2), Color(0xFF884d80)]),
            ),
            child: const Text(
              "あなたの海外経験を教えてください",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextDescription(
                      text: '母国以外、滞在したことがある国・地域を滞在目的ごとに分けて記載するようお願いいたします。'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextDescription(text: '例：'),
                      SizedBox(
                        width: cWidth,
                        child: Column(
                          children: const [
                            TextDescription(
                                text:
                                    "滞在国:アメリカ　　滞在目的：正規留学　　滞在期間：2019年9月～2023年7月"),
                            TextDescription(
                                text: "滞在国:アメリカ　　滞在目的：就労　　　　滞在期間：2023年9月～現在"),
                          ],
                        ),
                      )
                    ],
                  ),
                  const TextDescription(text: "海外滞在経験のない方は、「なし」にチェックを入れてください。"),
                  const TextDescription(
                      text:
                          "現在までに海外滞在経験がない方でも、今後、海外滞在を計画している方は、 「母国以外、滞在したことのある国・地域」および「滞在目的」を選択し、予定されている滞在期間を未来の期間で入力してください。"),
                  const TextDescription(text: "期間が未定の場合は「未定」にチェックを入れてください。"),
                  Row(
                    children: [
                      Checkbox(
                        value: _checkNoCountry,
                        onChanged: (bool? value) {
                          setState(() {
                            _checkNoCountry = value!;
                          });
                        },
                        activeColor: ColorName.primaryUserColor,
                      ),
                      const Text('なし'),
                    ],
                  ),
                  if (!_checkNoCountry) ...[
                    const SizedBox(
                      height: 24.0,
                    ),
                    const MultiLevelPicker(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    DynamicFormFieldLabel(
                      labelText: "滞在目的",
                      required: true,
                      child: DropdownButtonFormField<String>(
                        value: _selectedCountry,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedCountry = newValue;
                          });
                        },
                        items: <String>[
                          'United States',
                          'Canada',
                          'Mexico',
                          'United Kingdom',
                          'Germany',
                          'Japan',
                          // Add more countries as necessary
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.star),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            hintText: '滞在目的を選択してください',
                            isDense: true,
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 0.0),
                            hintStyle: const TextStyle(fontSize: 14.0)),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    DynamicFormFieldLabel(
                        labelText: "滞在期間",
                        child: TextFormField(
                          controller: startDateInput,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.event),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              hintText: '選択してください',
                              isDense: true,
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 0.0),
                              hintStyle: const TextStyle(fontSize: 14.0)),
                          readOnly: true,
                          onTap: _showStartDate,
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    DynamicFormFieldLabel(
                        child: TextFormField(
                      controller: endDateInput,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.event),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          hintText: '選択してください',
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0.0),
                          hintStyle: const TextStyle(fontSize: 14.0)),
                      readOnly: true,
                      onTap: _showEndDate,
                    )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: _checkUndecided,
                          onChanged: (bool? value) {
                            setState(() {
                              _checkUndecided = value!;
                            });
                          },
                          activeColor: ColorName.primaryUserColor,
                        ),
                        const Text('未定'),
                      ],
                    ),
                  ]
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
