import 'package:flutter/material.dart';
import 'package:ystyle/constants/text_styles.dart';


class CustomDropdownWidget extends StatefulWidget {
  final List<String> items;
  final String? dropDownValue;
  final String? dateText;
  final Function(String?) onChanged;

  const CustomDropdownWidget({
    Key? key,
    required this.items,
    required this.dropDownValue,
    required this.onChanged,
    this.dateText,
  }) : super(key: key);

  @override
  _CustomDropdownWidgetState createState() => _CustomDropdownWidgetState();
}

class _CustomDropdownWidgetState extends State<CustomDropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Container(
              margin: EdgeInsets.only(right: 20),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton(
                padding: EdgeInsets.symmetric(horizontal: 10),
                items: widget.items.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: KText(
                      text:  item,
                    )
                  );
                }).toList(),
                onChanged: widget.onChanged,
                value: widget.dropDownValue,
                icon: Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black),
                borderRadius: BorderRadius.circular(16),
                underline: Container(
                  height: 0,),
                iconSize: 30,
                dropdownColor: Colors.white,
              ),
            ),
            widget.dateText!=null
                ?KText(text: widget.dateText??'',fontWeight: FontWeight.w600)
                :const SizedBox.shrink()
          ],
        ),
        widget.dateText!=null
            ?Divider(
          height: 20,
          color: Colors.grey.shade200,
        )
            :SizedBox.shrink()
      ],
    );
  }
}
