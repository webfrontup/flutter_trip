

_getIPAddress() async {
  final url = 'https://httpbin.org/ip';
  var request = await HttpRequest.request(url);
  String ip = json.decode(request.reponseText)['origin'];
  print(ip)
}

var myNull = null;
if(myNull==null) {
    print('use "==null" to check zero')
}
var zero = 0;
if(zero==0) {
  print('use "==0" to check zero')
}

// Dart null 检查最佳实践
// 从Dart1.12开始，null-aware运算符可以帮助我们作null检查
bool isConnected(a, b) {
  //如果outgoing为null或outgoning[a]为null或contains(b)的值为null，都会导致表达式为null。
  bool outConn = outgoing[a]?.contains(b) ??false;
  bool inConn = incoming[a]?.contains(b) ??false;
  return outConn || inConn;
}
// ?.运算符在左边为null的情况下会阻断右边的调用，??运算符主要作用是在左侧表达式为null时为其设置默认值。
// 
print(null ?? false);
print(false ?? 11);
print(true ?? false);
// 技巧：获取一个对象中数组的长度：searchModel?.data?.length ?? 0

_getIPAddress2() {
  final url = "http://httpbin.org/ip";
  HttpRequest.request(url).then((value){
    print(json.decode(value.reponseText)['origin']);
  }).catchError((error) => print(error))
}

