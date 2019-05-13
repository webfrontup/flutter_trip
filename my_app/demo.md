- https://jspang.com/posts/2019/01/21/flutter-base2.html

### flutter中找对应的icon资源
- https://material.io/tools/icons/?style=baseline

### alignment:
```js
 Alignment.center,这个属性针对的是Container内child的对齐方式，也就是容器子内容的对齐方式，并不是容器本身的对齐方式。
  bottomCenter:下部居中对齐。
  botomLeft: 下部左对齐。
  bottomRight：下部右对齐。
  center：纵横双向居中对齐。
  centerLeft：纵向居中横向居左对齐。
  centerRight：纵向居中横向居右对齐。
  topLeft：顶部左侧对齐。
  topCenter：顶部居中对齐。
  topRight： 顶部居左对齐
```
### padding属性
```dart
    padding:const EdgeInsets.all(50.0),
    padding:const EdgeInsets.fromLTRB(10.0,30.0,0.0,0.0),
```
### margin属性
    margin是外边距，只的是container和外部元素的距离。语法同padding
### decoration
    decoration是 container 的修饰器，主要的功能是设置背景和边框。
    比如你需要给背景加入一个渐变，这时候需要使用BoxDecoration这个类，代码如下（需要注意的是如果你设置了decoration，就不要再设置color属性了，因为这样会冲突）。
### 设置边框
    设置边框可以在decoration里设置border属性
```dart
    border:Border.all(width:2.0,color:Colors.red)
```

### 加入图片的几种方式
- Image.asset:加载资源图片，就是加载项目资源目录中的图片,加入图片后会增大打包的包体体积，用的是相对路径。
- Image.network:网络资源图片，意思就是你需要加入一段http://xxxx.xxx的这样的网络路径地址。
- Image.file:加载本地图片，就是加载本地文件中的图片，这个是一个绝对路径，跟包体无关。
- Image.memory: 加载Uint8List资源图片,这个我目前用的不是很多，所以没什么发言权。

### fit属性的设置
    fit属性可以控制图片的拉伸和挤压，这些都是根据图片的父级容器来的，我们先来看看这些属性。
- BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。

- BoxFit.contain:全图显示，显示原比例，可能会有空隙。

- BoxFit.cover：显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）。

- BoxFit.fitWidth：宽度充满（横向充满），显示可能拉伸，可能裁切。

- BoxFit.fitHeight ：高度充满（竖向充满）,显示可能拉伸，可能裁切。

- BoxFit.scaleDown：效果和contain差不多，但是此属性不允许显示超过源图片大小，可小不可大。

### 图片的混合模式
    图片混合模式（colorBlendMode）和color属性配合使用，能让图片改变颜色，里边的模式非常的多，产生的效果也是非常丰富的。
- color：是要混合的颜色，如果你只设置color是没有意义的。
- colorBlendMode:是混合模式，相当于我们如何混合。

### repeat图片重复
- ImageRepeat.repeat : 横向和纵向都进行重复，直到铺满整个画布。

- ImageRepeat.repeatX: 横向重复，纵向不重复。

- ImageRepeat.repeatY：纵向重复，横向不重复。

### scrollDirection属性
    ListView组件的scrollDirection属性只有两个值，一个是横向滚动，一个是纵向滚动。默认的就是垂直滚动，所以如果是垂直滚动，我们一般都不进行设置。
- Axis.horizontal:横向滚动或者叫水平方向滚动。
- Axis.vertical:纵向滚动或者叫垂直方向滚动。

### List类型的使用
    List是Dart的集合类型之一,其实你可以把它简单理解为数组，其他语言也都有这个类型。它的声明有几种方式：
```dart
var myList = List(): 非固定长度的声明。
var myList = List(2): 固定长度的声明。
var myList= List<String>():固定类型的声明方式。
var myList = [1,2,3]: 对List直接赋值。
```
### GridView网格图表的使用
- crossAxisSpacing:网格间的空当，相当于每个网格之间的间距。
- crossAxisCount:网格的列数，相当于一行放置的网格数量。
- childAspectRatio:宽高比，这个值的意思是宽是高的多少倍，如果宽是高的2倍，那我们就写2.0，如果高是宽的2倍，我们就写0.5。希望小伙伴们理解一下。

### 水平布局Row的使用
- Row控件可以分为灵活排列和非灵活排列两种

### Button
    https://blog.csdn.net/yuzhiqiang_1993/article/details/85004313
- RaisedButton ：凸起的按钮，其实就是Android中的Material Design风格的Button ，继承自MaterialButton
- FlatButton ：扁平化的按钮，继承自MaterialButton
- OutlineButton	：带边框的按钮，继承自MaterialButton
- IconButton	：图标按钮,继承自StatelessWidget

### Column基本用法
- CrossAxisAlignment.star：居左对齐。
- CrossAxisAlignment.end：居右对齐。
- CrossAxisAlignment.center：居中对齐。
- mainAxisAlignment: MainAxisAlignment.center：主轴对齐。

### Stack层叠布局
- alignment属性是控制层叠的位置的，建议在两个内容进行层叠时使用。它有两个值X轴距离和Y轴距离，值是从0到1的，都是从上层容器的左上角开始算起的。

### CircleAvatar组件的使用
- CircleAvatar这个经常用来作头像的，组件里边有个radius的值可以设置图片的弧度。

### Stack的Positioned属性
- bottom: 距离层叠组件下边的距离
- left：距离层叠组件左边的距离
- top：距离层叠组件上边的距离
- right：距离层叠组件右边的距离
- width: 层叠定位组件的宽度
- height: 层叠定位组件的高度

### RaisedButton按钮组件
- child：可以放入容器，图标，文字。让你构建多彩的按钮。
- onPressed：点击事件的相应，一般会调用Navigator组件。

### Navigator.push 和 Navigator.pop
- Navigator.push：是跳转到下一个页面，它要接受两个参数一个是上下文context，另一个是要跳转的函数。
- Navigator.pop：是返回到上一个页面，使用时传递一个context（上下文）参数，使用时要注意的是，你必须是有上级页面的，也就是说上级页面使用了Navigator.push。
- 使用路由MaterialPageRoute传递参数
```dart
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder:(context)=>new ProductDetail(product:products[index])
      )
    );
```
- 返回数据的方式 返回数据只要在返回时带第二个参数就可以了。
```dart
 Navigator.pop(context,'xxxx');  //xxx就是返回的参数
```

### Awesome Flutter snippets组件的使用
- stlss: StatelessWidget
- stful: StatefulWidget


### 异步请求和等待
```dart
    _navigateToXiaoJieJie(BuildContext context) async{ //async是启用异步方法
    
        final result = await Navigator.push(//等待
          context, 
          MaterialPageRoute(builder: (context)=> XiaoJieJie())
          );
          
          Scaffold.of(context).showSnackBar(SnackBar(content:Text('$result')));
      }
    }
```

### SnackBar的使用
    SnackBar是用户操作后，显示提示信息的一个控件，类似Tost，会自动隐藏。SnackBar是以Scaffold的showSnackBar方法来进行显示的。
```dart
  Scaffold.of(context).showSnackBar(SnackBar(content:Text('$result')));
```

> Flutter客户端打包 
### 配置APP的图标
> 找到目录：项目根目录/android/app/src/main/res/ 
> 进入之后你会看到很多mipmap-为前缀命名的文件夹，后边的是像素密度，可以看出图标的分辨率。
- mdpi (中) ~160dpi
- hdpi （高） ~240dip
- xhdpi （超高） ~320dip
- xxhdpi （超超高） ~480dip
- xxxhdpi （超超超高） ~640dip
- 将对应像素密度的图片放入对应的文件夹中,图片记得用png格式，记得名字要统一，才能一次性进行配置。
### AndroidManifest.xml 文件
这个文件主要用来配置APP的名称、图标和系统权限，所在的目录在:
>项目根目录/android/app/src/main/AndroidManifest.xml
```dart
android:label="flutter_app"   //配置APP的名称，支持中文
android:icon="@mipmap/ic_launcher" //APP图标的文件名称
```
- 更多细节 https://jspang.com/posts/2019/02/01/flutter-base4.html




### 自定义主题样本
> primarySwatch ：现在支持18种主题样本了。
```dart
theme: ThemeData(
  primarySwatch: Colors.lightBlue,
),
```
### floatingActionButton 可交互的浮动按钮
```dart
    floatingActionButton: FloatingActionButton(
      // 点击相应事件，最常用的一个属性。
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
            return EachView('New Page');
          }));
        },
        // tooltip：长按显示的提示文字，因为一般只放一个图标在上面
        tooltip: 'Increment',
        // child ：放置子元素，一般放置Icon Widget。
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
// 和底栏进行融合 floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
```
### BottomAppBar 底部工具栏
    可以放置文字和图标，当然也可以放置容器。
- color: 底部工具栏的颜色。
- shape：设置底栏的形状，一般使用这个都是为了和floatingActionButton融合，所以使用的值都是CircularNotchedRectangle(),有缺口的圆形矩形。
- child ：里边可以放置大部分Widget，让我们随心所欲的设计底栏。

### 自定义CustomRoute Widget
- FadeTransition:渐隐渐现过渡效果，主要设置opactiy（透明度）属性，值是0.0-1.0。
- animate :动画的样式，一般使用动画曲线组件（CurvedAnimation）。
- curve: 设置动画的节奏，也就是常说的曲线，Flutter准备了很多节奏，通过改变动画取消可以做出很多不同的效果。
- transitionDuration：设置动画持续的时间，建议再1和2之间。

### 背景滤镜组件 制作毛玻璃 
    BackdropFilter就是背景滤镜组件，使用它可以给父元素增加滤镜效果

### With 关键字的使用
    with是dart的关键字，意思是混入的意思，就是说可以将一个或者多个类的功能添加到自己的类无需继承这些类， 避免多重继承导致的问题。
```dart
  class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin {}
```
### TabBar Widget的使用
    TabBar是切换组件，它需要设置两个属性。
- controller: 控制器，后边跟的多是TabController组件。
- tabs：具体切换项，是一个数组，里边放的也是Tab Widget。
```dart
    bottom:TabBar(
      controller: _controller,
      tabs:[
        Tab(icon:Icon(Icons.directions_car)),
        Tab(icon:Icon(Icons.directions_transit)),
        Tab(icon:Icon(Icons.directions_bike)),
      ],
    )
```
## 一个不简单的搜索条

### 数据文件 asset.dart
    asset.dart相当于数据文件，工作中这些数据是后台传递给我们，
    或者写成配置文件的，这里我们就以List的方式代替了。我们在这个文件中定义了两个List：
- searchList : 这个相当于数据库中的数据，我们要在这里进行搜索。
- recentSuggest ： 目前的推荐数据，就是搜索时，自动为我们进行推荐。 
  
```dart
    const searchList = [
      "jiejie-大长腿",
      "jiejie-水蛇腰",
      "gege1-帅气欧巴",
      "gege2-小鲜肉"
    ];
    
    const recentSuggest = [
      "推荐-1",
      "推荐-2"
    ];

```

### 重写buildActions方法：
    buildActions方法时搜索条右侧的按钮执行方法，我们在这里方法里放入一个clear图标。
```dart
  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon:Icon(Icons.clear),
        onPressed: ()=>query = "",)
      ];
  }
```

### buildLeading 方法重写
    这个时搜索栏左侧的图标和功能的编写，这里我们才用AnimatedIcon，然后在点击时关闭整个搜索页面，代码如下。
```dart
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => close(context, null));
  }
```
### buildResults方法重写
    buildResults方法，是搜到到内容后的展现。
```dart
    @override
      Widget buildResults(BuildContext context) {
        return Container(
          width: 100.0,
          height: 100.0,
          child: Card(
            color: Colors.redAccent,
            child: Center(
              child: Text(query),
            ),
          ),
        );
      }
```
### buildSuggestions方法重写
    这个方法主要的作用就是设置推荐，就是我们输入一个字，然后自动为我们推送相关的搜索结果
```dart
@override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) => ListTile(
              title: RichText(
                  text: TextSpan(
                      text: suggestionList[index].substring(0, query.length),
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ])),
            ));
  }
}
```

### mediaQuery 媒体查询
    使用meidaQuery可以很容易的得到屏幕的宽和高，得到宽和高的代码如下：
```dart
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
```

### GestureDetector 手势操作
    
    GestureDetector它式一个Widget，但没有任何的显示功能，而只是一个手势操作，用来触发事件的。
    虽然很多Button组件是有触发事件的，比如点击，但是也有一些组件是没有触发事件的，
    比如：Padding、Container、Center这时候我们想让它有触发事件就需要再它们的外层增加一个GestureDetector，
    比如我们让Padding有触发事件，代码如下：
```dart
    Widget buildAddButton(){
        return  GestureDetector(
          onTap:(){
            if(list.length<9){
              setState(() {
                    list.insert(list.length-1,buildPhoto());
              });
            }
          },
          child: Padding(
            padding:const EdgeInsets.all(8.0),
            child: Container(
              width: 80.0,
              height: 80.0,
              color: Colors.black54,
              child: Icon(Icons.add),
            ),
          ),
        );
      }
```

### ExpansionTile组件
    ExpansionTile Widget就是一个可以展开闭合的组件，常用的属性有如下几个。
- title:闭合时显示的标题，这个部分经常使用Text Widget。
- leading:标题左侧图标，多是用来修饰，让界面显得美观。
- backgroundColor: 展开时的背景颜色，当然也是有过度动画的，效果非常好。
- children: 子元素，是一个数组，可以放入多个元素。
- trailing ： 右侧的箭头，你可以自行替换但是我觉的很少替换，因为谷歌已经表现的很完美了。
- initiallyExpanded: 初始状态是否展开，为true时，是展开，默认为false，是不展开。

### ExpansionPanelList 常用属性
- expansionCallback:点击和交互的回掉事件，有两个参数，第一个是触发动作的索引，第二个是布尔类型的触发值。
- children:列表的子元素，里边多是一个List数组。

### ExpandStateBean 自定义类
为了方便管理制作了一个ExpandStateBean类，里边就是两个状态，一个是是否展开isOpen,另一个索引值。代码如下:
```dart
    class ExpandStateBean{
      var isOpen;
      var index;
      ExpandStateBean(this.index,this.isOpen);
    }

```

### 去掉DeBug图标
```dart
  debugShowCheckedModeBanner: false,
```

### ClipPath 路径裁切控件
    clipPath控件可以把其内部的子控件切割，它有两个主要属性（参数）:
- child :要切割的元素，可以是容器，图片.....
- clipper :切割的路径，这个要和CustomClipper对象配合使用。
- 在Scaffold里放置了一个列容器，然后把ClipPath控件放到了里边，ClipPath的子元素是一个容器控件Container。
    BootomClipper是我们自定义的一个对象，里边主要就是切割的路径。

  
```dart
    import 'package:flutter/material.dart';
    
    class HomePage extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body:Column(
            children: <Widget>[
              ClipPath(
                clipper:BottomClipper(),
                child: Container(
                  color:Colors.deepPurpleAccent,
                  height: 200.0,
                ),
              )
            ],
          )
        );
      }
    }
```

### CustomClipper 裁切路径
```dart
    class BottomClipperTest extends CustomClipper<Path>{}
```

### AnimationController 
    AnimationController是Animation的一个子类，它可以控制Animation, 也就是说它是来控制动画的，比如说控制动画的执行时间。
- vsync:this :垂直同步设置，使用this就可以了。
- duration : 动画持续时间，这个可以使用seconds秒，也可以使用milliseconds毫秒，工作中经常使用毫秒

- 设置一个动画控制器，这个动画控制器控制动画执行时间是3000毫秒。然后我们设置了一段动画，动画使用了动画控制器的约定。
```dart
    _controller = AnimationController(vsync:this,duration:Duration(milliseconds:3000));
    _animation = Tween(begin: 0.0,end:1.0).animate(_controller);
```

### animation.addStatusListener
    动画事件监听器，它可以监听到动画的执行状态，我们这里只监听动画是否结束，如果结束则执行页面跳转动作
- AnimationStatus.completed:表示动画已经执行完毕。
- pushAndRemoveUntil:跳转页面，并销毁当前控件。
```dart
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context)=>MyHomePage()), 
          (route)=> route==null);
      }
    });
```

### Cupertino UI
    Flutter有两套UI模板，一套是material,另一套就是Cupertino。
    Cupertino主要针对的的就是IOS系统的UI，所以用的右滑返回上一级就是在这个Cupertino里。
- Cupertino的引入方法: `import 'package:flutter/cupertino.dart';`

### CupertinoPageScaffold
    这个和以前使用material的Scaffold类似，不过他里边的参数是child

### 轻量级操作提示
    Flutter中有很多提示控件,比如Dialog、Snackbar和BottomSheet这些操作都是比较重量级的，存在屏幕上的时间较长或者会直接打断用户的操作。
    Tooltip是继承于StatefulWidget的一个Widget，它并不需要调出方法，当用户长按被Tooltip包裹的Widget时，会自动弹出相应的操作提示。

### Draggable控件实例
    Draggable控件负责就是拖拽，父层使用了Draggable，它的子元素就是可以拖动的，子元素可以实容器，可以是图片。
- data: 是要传递的参数，在DragTarget里，会接受到这个参数。当然要在拖拽控件推拽到DragTarget的时候。
- child:在这里放置你要推拽的元素，可以是容器，也可以是图片和文字。
- feedback: 常用于设置推拽元素时的样子，在案例中当推拽的时候，我们把它的颜色透明度变成了50%。当然你还可以改变它的大小。
- onDraggableCanceled:是当松开时的相应事件，经常用来改变推拽时到达的位置，改变时用setState来进行。
```dart
    Draggable(
      data:widget.widgetColor,
      child: Container(
        width: 100,
        height: 100,
        color:widget.widgetColor,
      ),
      feedback:Container(
        width: 100.0,
        height: 100.0,
        color: widget.widgetColor.withOpacity(0.5),
      ),
      onDraggableCanceled: (Velocity velocity, Offset offset){
        setState(() {
          this.offset = offset;
        });
      },
```
### DragTarget Widget
    DragTarget是用来接收拖拽事件的控件，当把Draggable放到DragTarget里时，他会接收Draggable传递过来的值，然后用生成器改变组件状态。
- onAccept:当推拽到控件里时触发，经常在这里得到传递过来的值。
- builder: 构造器，里边进行修改child值。

```dart
    DragTarget(onAccept: (Color color) {
      _draggableColor = color;
    }, builder: (context, candidateData, rejectedData) {
      return Container(
        width: 200.0,
        height: 200.0,
        color: _draggableColor,
      );
    }),
```








