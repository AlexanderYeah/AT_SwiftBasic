import UIKit

// 1 构造器
// 结构体和类在实例的构造过程中会调用一种特殊的方法init，称之为构造器
// 构造器的主要作用是初始化存储属性
// 如果存储属性在构造器中没有初始化 在定义的时候也没有初始化 就会产生编译错误

class Employee{
    let no:Int;
    var name:String?;
    // 在构造器中进行初始化存储属性
    init() {
        no = 25;
        name = "alex";
    }
}


// 2 为了增加程序的可读性，swift中的方法和函数可以使用外部参数名
// 在构造器中也可以使用外部参数名
class Dog
{
    var name:String?;
    var age:Int?;
    init(name n:String,age a:Int) {
        self.name = n;
        self.age = a;
    }
}
// 初始化实例的时候传入外部参数
var d = Dog(name: "Tommy", age: 12);
print("i am \(d.name!) and \(d.age!)");


// 3 构造器重载
// 函数有相同的名字 参数列表不同或者返回值不同或者外部参数名不同

class Person{
    var name:String?;
    var age:Int;
    


    // 第一个 传入外部参数的构造器
    init(name n:String,age a:Int) {
        self.name = n;
        self.age = a;
    }
    
    // 第二个构造器
    // 在此构造器中通过self.init 调用第一个构造器 就是构造器代理
    convenience init() {
        self.init(name: "Curry", age: 22);
    }
   
}


// 4 引用类型构造器横向代理
// 横向代理: 类似于值类型构造器代理，发生在同一类的内部 这种构造器称之为便利构造器（convenience initializers）
// 向上代理: 发生在继承的情况下，在子类的构造过程中先调用父类的构造器,初始化父类的存储属性，这种构造器称之为指定构造器（designated initializers）

class Rectangle{
    var width:Double;
    var height:Double;
    
    init(width:Double,height:Double) {
        self.width = width;
        self.height = height;
    }
    
    // 横向代理
    convenience init(){
        self.init(width: 220.0, height: 110.0);
    }
}


// 5 析构器
// 实例最后释放的时候 需要清理一些资源 这个过程就称之为析构过程
// deinit 没有返回值 没有参数 不能重载


class Rectangle2{
    var width:Double;
    var height:Double;
    
    init(width:Double,height:Double) {
        self.width = width;
        self.height = height;
    }
 
    
    deinit {
        print("Rectangle2 deinit");
    }    
}
// 只有声明rect2 为可选类型的时候 才能被赋值为nil 才能出发析构
var rect2:Rectangle2? = Rectangle2(width: 12.0, height: 110.0);
rect2 = nil;
















