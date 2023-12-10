import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/presentation/messages_brand_end_page/models/messages_brand_end_model.dart';
import '../models/matchesautolayout_item_model.dart';

/// A provider class for the MessagesBrandEndPage.
///
/// This provider manages the state of the MessagesBrandEndPage, including the
/// current messagesBrandEndModelObj

// ignore_for_file: must_be_immutable
class MessagesBrandEndProvider extends ChangeNotifier {
  MessagesBrandEndModel messagesBrandEndModelObj = MessagesBrandEndModel();

  @override
  void dispose() {
    super.dispose();
  }
}
