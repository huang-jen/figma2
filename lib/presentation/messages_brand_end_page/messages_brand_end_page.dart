import '../messages_brand_end_page/widgets/matchesautolayout_item_widget.dart';
import 'models/matchesautolayout_item_model.dart';
import 'models/messages_brand_end_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'provider/messages_brand_end_provider.dart';

// ignore_for_file: must_be_immutable
class MessagesBrandEndPage extends StatefulWidget {
  const MessagesBrandEndPage({Key? key})
      : super(
          key: key,
        );

  @override
  MessagesBrandEndPageState createState() => MessagesBrandEndPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MessagesBrandEndProvider(),
      child: MessagesBrandEndPage(),
    );
  }
}

class MessagesBrandEndPageState extends State<MessagesBrandEndPage>
    with AutomaticKeepAliveClientMixin<MessagesBrandEndPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 53.v),
              _buildMatchesAutolayout(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMatchesAutolayout(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.h),
        child: Consumer<MessagesBrandEndProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 14.v,
                );
              },
              itemCount: provider
                  .messagesBrandEndModelObj.matchesautolayoutItemList.length,
              itemBuilder: (context, index) {
                MatchesautolayoutItemModel model = provider
                    .messagesBrandEndModelObj.matchesautolayoutItemList[index];
                return MatchesautolayoutItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
