import UIKit

var str = "Hello, playground"

// 1 存储属性
// 分为 常量属性  和 变量属性

// 延迟加载属性
class Employee1{
    var no:Int = 0;
    lazy var depart:Depart1 = Depart1();
    
}

struct Depart1{
    var name:String = "";
}

// 以下代码在创建Employee1 的时候，会同时实例化Depart1部门
// 所以可以加一个var 修饰 使用延时加载，只在调用的时候进行加载访问
let e = Employee1();
e.depart.name;

// 属性观察者
// willset 在设置属性之前调用
// didset 在设置属性之后调用


// 2 计算属性
// 本事不存储数据 是从存储属性中计算得到数据
// getter 取值访问器  setter 设置访问器
class Employee2{
    
    var firstName:String = "Alex";
    var secondName:String = "Yeah";
    var fullName:String{
        // get
        get {
            return firstName + "." + secondName;
        }
        // set
        set(newName){
            var name = newName.components(separatedBy: ".");
            firstName = name[0];
            secondName = name[1];
        }
    }
}

let e2 = Employee2();
// 调用get
e2.fullName;
// 调用set
e2.fullName = "Tom.Dog";


// 计算属性
// 类中不能定义静态属性

// 3 下标











