import UIKit

var str = "Hello, playground"

// 泛型
// 1 定义一个交换两个变量的Int

func swapTwoVal( a:inout Int, b: inout Int){
    let temp = a
    a = b;
    b = temp;
}





// swapTwoValues 后面跟着占位类型名（T），并用尖括号括起来（<T>）。这个尖括号告诉 Swift 那个 T 是 swapTwoValues(_:_:) 函数定义内的一个占位类型名，因此 Swift 不会去查找名为 T 的实际类型。

func swapTwoVal2<T>(a:inout T,b:inout T){
    let temp = a
    a = b;
    b = temp;
}

var a1 = 10;
var b1 = 55;

swapTwoVal2(a: &a1, b: &b1);

print("\(a1)--\(b1)");













