// Dart null 检查最佳实践
// 从Dart1.12开始，null-aware运算符可以帮助我们作null检查
//    bool isConnected(a, b) {
//      //如果outgoing为null或outgoning[a]为null或contains(b)的值为null，都会导致表达式为null。
//      bool outConn = outgoing[a]?.contains(b) ??false;
//      bool inConn = incoming[a]?.contains(b) ??false;
//      return outConn || inConn;
//    }

void main() {
    int a = 123;
    var b = 123;
    print(a);
    print(b);
    print(null ?? false);
    print(false ?? 11);
    print(true ?? false);

    var myNull = null;
    if(myNull==null) {
      print('use "==null" to check null');
    }
    var zero = 0;
    if(zero==0) {
      print('use "==0" to check zero');
    }

//    _getIPAddress2() {
//      final url = "http://httpbin.org/ip";
//      HttpRequest.request(url).then((value){
//        print(json.decode(value.reponseText)['origin']);
//      }).catchError((error) => print(error))
//    }

}
//123
//123
//false
//false
//true