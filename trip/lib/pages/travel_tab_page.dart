import 'package:flutter/material.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//import 'package:flutter_trip/dao/travel_dao.dart';
//import 'package:flutter_trip/model/travel_model.dart';
//import 'package:flutter_trip/util/navigator_util.dart';
//import 'package:flutter_trip/widget/loading_container.dart';
//import 'package:flutter_trip/widget/webview.dart';
//import 'package:flutter_trip/widget/cached_image.dart';

const TRAVEL_URL =
    'https://m.ctrip.com/restapi/soa2/16189/json/searchTripShootListForHomePageV2?_fxpcqlniredt=09031014111431397988&__gw_appid=99999999&__gw_ver=1.0&__gw_from=10650013707&__gw_platform=H5';
const PAGE_SIZE = 10;

///旅拍tab页面
class TravelTabPage extends StatefulWidget {
  final String travelUrl;
  final Map params;
  final String groupChannelCode;
  final int type;

  const TravelTabPage(
      {Key key, this.travelUrl, this.params, this.groupChannelCode, this.type})
      : super(key: key);

  @override
  _TravelTabPageState createState() => _TravelTabPageState();
}

class _TravelTabPageState extends State<TravelTabPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(


    );
  }
}


//class _TravelItem extends StatelessWidget {
//  final TravelItem item;
//  final int index;
//
//  const _TravelItem({Key key, this.item, this.index}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return GestureDetector(
//      onTap: () {
//        if (item.article.urls != null && item.article.urls.length > 0) {
//          NavigatorUtil.push(
//              context,
//              WebView(
//                url: item.article.urls[0].h5Url,
//                title: '详情',
//              ));
//        }
//      },
//      child: Card(
//        child: PhysicalModel(
//          color: Colors.transparent,
//          clipBehavior: Clip.antiAlias,
//          borderRadius: BorderRadius.circular(5),
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              _itemImage,
//              Container(
//                padding: EdgeInsets.all(4),
//                child: Text(
//                  item.article.articleTitle,
//                  maxLines: 2,
//                  overflow: TextOverflow.ellipsis,
//                  style: TextStyle(fontSize: 14, color: Colors.black87),
//                ),
//              ),
//              _infoText,
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//
//  Widget get _itemImage {
//    return Stack(
//      children: <Widget>[
//        CachedImage(
//          inSizedBox: true,
//          imageUrl: item.article.images[0]?.dynamicUrl,
//        ),
//        Positioned(
//          bottom: 8,
//          left: 8,
//          child: Container(
//            padding: EdgeInsets.fromLTRB(5, 1, 5, 1),
//            decoration: BoxDecoration(
//              color: Colors.black54,
//              borderRadius: BorderRadius.circular(10),
//            ),
//            child: Row(
//              children: <Widget>[
//                Padding(
//                  padding: EdgeInsets.only(right: 3),
//                  child: Icon(
//                    Icons.location_on,
//                    color: Colors.white,
//                    size: 12,
//                  ),
//                ),
//                LimitedBox(
//                  maxWidth: 130,
//                  child: Text(
//                    _poiName(),
//                    maxLines: 1,
//                    overflow: TextOverflow.ellipsis,
//                    style: TextStyle(fontSize: 12, color: Colors.white),
//                  ),
//                )
//              ],
//            ),
//          ),
//        )
//      ],
//    );
//  }
//
//  Widget get _infoText {
//    return Container(
//      padding: EdgeInsets.fromLTRB(6, 0, 6, 10),
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        children: <Widget>[
//          Row(
//            children: <Widget>[
//              PhysicalModel(
//                color: Colors.transparent,
//                clipBehavior: Clip.antiAlias,
//                borderRadius: BorderRadius.circular(12),
//                child: CachedImage(
//                  imageUrl: item.article.author?.coverImage?.dynamicUrl,
//                  width: 24,
//                  height: 24,
//                ),
//              ),
//              Container(
//                padding: EdgeInsets.all(5),
//                width: 90,
//                child: Text(
//                  item.article.author?.nickName,
//                  maxLines: 1,
//                  overflow: TextOverflow.ellipsis,
//                  style: TextStyle(fontSize: 12),
//                ),
//              )
//            ],
//          ),
//          Row(
//            children: <Widget>[
//              Icon(
//                Icons.thumb_up,
//                size: 14,
//                color: Colors.grey,
//              ),
//              Padding(
//                padding: EdgeInsets.only(left: 3),
//                child: Text(
//                  item.article.likeCount.toString(),
//                  style: TextStyle(fontSize: 10),
//                ),
//              )
//            ],
//          )
//        ],
//      ),
//    );
//  }
//
//  String _poiName() {
//    return item.article.pois == null || item.article.pois.length == 0
//        ? '未知'
//        : item.article.pois[0]?.poiName ?? '未知';
//  }
//}
