import UIKit

var str = "Hello, playground"
// 1计算机语言闭包的实现必要条件
// 1.1 支持函数类型，能够将函数作为参数或者返回值传递
// 1.2 支持函数嵌套,函数内部嵌套函数

func caculate(opr:String) ->(Int,Int)->(Int)
{
    // + 函数
    func add(a:Int,b:Int)->(Int){
        return a+b;
    }
    // - 函数
    func sub(a:Int,b:Int)->(Int){
        return a-b;
    }
    
    var  res : (Int,Int) ->(Int);
    switch (opr) {
    case "+":
        res = add;
    case "-":
        res = sub;
    default:
        res = add;
    }
    
    return res;
}

var opration = caculate(opr: "-");
opration(5,5);



// 2 闭包的概念
// 自包含的匿名代码块，可以作为表达式，函数参数，和函数返回值，闭包表达式的运算结果是一种函数类型

// 闭包的形式
//{
//    (参数列表) -> 返回值类型 in
//    语句组
//}

func calculate2(opr:String)->(Int,Int)->Int{
    var res:(Int,Int)->Int;
    switch opr {
    case "+":
        //
        res = {(a:Int,b:Int)->Int in
            return a+b;
        }
    case "-":
        res = {(a:Int,b:Int)->Int in
            return a-b;
        }
    default:
        res = {(a:Int,b:Int)->Int in
            return a+b;
        }
    }
    return res;
}


let op1:(Int,Int)->Int = calculate2(opr: "+");
op1(55,11);


// 3 闭包的简化形式
// 类型推断是swift语言的长处 可以根据上下文环境推断出参数类型和返回值类型
// 标准形式
let b1 = {(a:Int,b:Int)->Int in return a+b};
// 简化形式 省去return 关键字
let b2 = {(a:Int,b:Int)->Int in a+b}
// 简化形式 缩写参数名称 $0,$1,$2 代表闭包中的第一个参数 第二个参数 第三个参数
func cal3(opr:String)->(Int,Int)->Int{
    var res:(Int,Int)->Int;
    switch opr {
    case "+":
        res = {$0 + $1};
    default:
        res = {$0 + $1};
    }
    return res;
}

cal3(opr: "+")(5,5);

// 4 使用尾随闭包
// 闭包表达式可以作为函数的参数传递 如果闭包表达式很长 就会影响程序的可读性
// 闭包是一个书写在函数括号之后的闭包表达式 函数支持将其作为最后一个参数调用
func cal4(opr:String,funAction:(Int,Int)->Int){
    switch opr {
    case "+":
        print("res is \(funAction(11,55))")
    default:
        print("res is \(funAction(11,55))")
    }
}


cal4(opr: "-", funAction: {(a:Int,b:Int)->Int in return a * b});
// 尾随闭包是书写在函数括号之后的一个闭包表达式
cal4(opr: "-"){(a:Int,b:Int)->Int in return a * b};

// 5 捕获上下文中的常量和变量
















