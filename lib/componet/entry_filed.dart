import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ride/utils/dimention.dart';

class EntryFiled extends StatelessWidget {
  const EntryFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(57),
      width: getScreenWidth(58),
      child: TextFormField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(16))),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        onSaved: (pin1) {},
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
