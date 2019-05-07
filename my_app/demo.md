- https://jspang.com/posts/2019/01/21/flutter-base2.html
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


















