import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/common_widgets/custom_appbar.dart';
import 'package:flutter_camping_app/ui/common_widgets/custom_button.dart';

import 'widgets/field.dart';
import 'widgets/team_mates_element.dart';

class AddNewTripScreen extends StatefulWidget {
  const AddNewTripScreen({Key key}) : super(key: key);

  @override
  _AddNewTripScreenState createState() => _AddNewTripScreenState();
}

class _AddNewTripScreenState extends State<AddNewTripScreen> {
  TextEditingController _tripNameController;
  TextEditingController _tripLocationController;
  TextEditingController _tripDateController;

  @override
  void initState() {
    _tripNameController = TextEditingController();
    _tripLocationController = TextEditingController();
    _tripDateController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _tripNameController.dispose();
    _tripLocationController.dispose();
    _tripDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        appBarOtion: AppBarOption(
          title: 'Add New Trip',
          isBackEnable: true,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildField(
            'Trip Name',
            _tripNameController,
            '',
            TextInputType.text,
          ),
          const SizedBox(height: 10),
          buildField(
            'Location',
            _tripLocationController,
            '',
            TextInputType.text,
          ),
          const SizedBox(height: 10),
          CustomButton(
            padding: const EdgeInsets.only(left: 20),
            title: 'View Locations',
            isOutlined: true,
            width: 140,
            onTap: () {},
          ),
          const SizedBox(height: 10),
          teamMatesElement('Teammates'),
          const SizedBox(height: 20),
          CustomButton(
            padding: const EdgeInsets.only(left: 20),
            title: 'Add New Teammates',
            isOutlined: true,
            width: 190,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
