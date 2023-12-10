import 'framefortythree_item_model.dart';
import 'frame_item_model.dart';
import '../../../core/app_export.dart';

class ReccomendedCreatorsBrandEndModel {
  List<FramefortythreeItemModel> framefortythreeItemList =
      List.generate(5, (index) => FramefortythreeItemModel());

  List<FrameItemModel> frameItemList =
      List.generate(6, (index) => FrameItemModel());
}
