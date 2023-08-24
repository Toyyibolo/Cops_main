
import 'package:flutter/material.dart';
import 'package:ride/utils/app_widget/spinkit.dart';

class CXSpinner extends StatelessWidget {
  const CXSpinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 60,
            alignment: FractionalOffset.center,
            child: const SpinKitDoubleBounce(
              color: Colors.amber,
              size: 60.0,
            )));
  }
}

// class CXLoader {
//   static void show(BuildContext context) {
//     return Loader.show(
//       context,
//       progressIndicator: const CXSpinner(),
//       overlayColor: Colors.black54,
//     );
//   }

//   static void hide() {
//     return Loader.hide();
//   }
// }