import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../widgets/coordinator.dart';
import '../widgets/appbar.dart';
import '../utils/constants.dart';

class CoordinatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Coordinator(),
          ConatusAppBar(
              appBarTitle: "",
              showDrawer: false,
              appBarColor: ConatusColors.transparent)
        ],
      ),
    );
  }
}
