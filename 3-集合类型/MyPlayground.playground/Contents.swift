import UIKit

var str = "Hello, playground"

// 1 数组
// 创建一个空的数组
var arr1 = [Int]();
arr1.append(6);

// 创建一个特定大小 并且所有数据都被默认的构造方法
// 以下数组有6个5
var arr2 = Array(repeating: 5, count: 6);

// 通过两个数组相加创建一个数组
var arr3 = arr2 + arr1;


// 用数组的字面量构造数组
var arr4 :[String] = ["dog","cat"];


// 2访问和修改数组

// 判断是否为空
if arr4.isEmpty {
    print("empty");
}else{
    print("not empty");
}

// 访问元素
var cat = arr4[0];

// 插入元素
arr4.insert("wolf", at: 0);

// 删除元素
arr4.remove(at: 0);

// 数组遍历
for item in arr4
{
    print(item);
}

// 遍历索引和值
for (index,value) in arr4.enumerated(){
    print("\(index)---\(value)");
}


// 3 集合
// 创建一个空的集合
var set1 = Set<String>();

// 4 创建一个空的字典
var dic1 = [Int:String]();

// 5 函数
// 5.1 无返回值无参数
func sayHi(){
    print("sayHi");
}
sayHi()

// 5.2 有参数有返回
func getCount(a:Int,b:Int) ->Int
{
    return a + b;
}

getCount(a: 5, b: 6);

// 5.3 无参数有返回值
func sayHello()->String
{
    return "sayHello";
}

sayHello()

// 5.4 有参数无返回值
func addCount(a:Int,b:Int)
{
    print(a+b);
}
addCount(a: 5, b: 5);

// 5.5 使用元组多重返回值函数
func getMaxValue(array:[Int]) ->(min:Int,max:Int)
{
    var tempMin = array[0];
    var tempMax = array[0];
    
    for value in array[1..<array.count]{
        
        if value < tempMin{
            tempMin = value;
        }
        
        if value > tempMax {
            tempMax = value;
        }
    }
    
    return (tempMin,tempMax);
}

getMaxValue(array: [12,15,22,13,852,14,5]);



// 6 函数参数标签和参数名称
// 每个函数参数都有一个参数标签( argument label )以及一个参数名称(parameter name)。
// from 是参数标签 place 是参数名称
func helloFromShangHai(name:String,from place:String){
    print("\(name) is from \(place)");
}

helloFromShangHai(name: "alex", from: "shanghai");

// 7 参数默认值


// 8 可变参数
// 一个可变参数（variadic parameter）可以接受零个或多个值。函数调用时，你可以用可变参数来指定函数参数可以被传入不确定数量的输入值。通过在变量类型名后面加入（...）的方式来定义可变参数。

// 计算总分数
func addScore(_ scores:Double...){
    
    var total:Double = 0;
    for s in scores{
        total += s;
    }
    
    print(total);
}

addScore(15,15,15,15,15);


// 9 输入输出参数
// 函数参数默认是常量。试图在函数体中更改参数值将会导致编译错误(compile-time error)。这意味着你不能错误地更改参数值。如果你想要一个函数可以修改参数的值，并且想要在这些修改在函数调用结束后仍然存在，那么就应该把这个参数定义为输入输出参数（In-Out Parameters）。

func changeTwoNumber(_ a: inout Int, _ b:inout Int){
    a = a + b;
    b = a - b;
    a = a - b;
    print("\(a)---\(b)");
}

var a = 5;
var b = 8;
changeTwoNumber(&a, &b);



// 10 函数类型
// 每个函数都有特定的函数类型 函数的类型由函数的参数类型和返回类型组成。

// 参数是Int 返回值是Int 则函数类型是 (Int,Int) -> Int
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b;
}


func multiTwoInts(_ a:Int,_ b:Int) ->Int{
    return a * b;
    
}

// 11 函数类型作为参数类型
// 第一个参数叫 addMath，类型是  (Int, Int) -> Int，在调用此函数的时候你可以传入任何这种类型的函数
// 第二个和第三个参数叫 a 和 b，它们的类型都是  Int，这两个值作为已给出的函数的输入值。
func printAddResult(addMath:(Int,Int)->Int,_ a:Int,_ b:Int){
    print(addMath(5, 5));
}
printAddResult(addMath: addTwoInts(_:_:), 5, 5);

// 12 函数类型作为返回类型

// 根据传入的参数 返回不同的喊出类型
func printChooseResult(flag:Bool) -> (Int,Int)->Int
{
    if flag{
        return addTwoInts(_:_:);
    }else{
        return multiTwoInts(_:_:);
    }
}

// 接收函数
let completeSth = printChooseResult(flag: true);

print(completeSth(5,8));

// 13嵌套函数
// 把函数定义在别的函数体中，称作 嵌套函数（nested functions）。



























