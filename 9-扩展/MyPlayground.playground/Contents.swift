import UIKit

var str = "Hello, playground"
// 1 在原有的类型上(类，结构体，枚举)的基础上添加新的功能。扩展是一种轻量级的继承机制
// swift 中的扩展机制可以在原类型上添加新的功能
// 1.1 实例计算属性和静态计算属性
// 1.2 实例方法和静态方法
// 1.3 构造器
// 1.4 下标

// 2 扩展计算属性
// Int 的扩展类型
extension Int {
    var errorMsg :String{
        var errorStr = "";
        switch self {
        case 1:
            errorStr = "信号不好";
        case 2:
            errorStr = "信号极好";
        case 3:
            errorStr = "信号很差";
        case 4:
            errorStr = "信号极差";
        default:
            errorStr = "未检测出信号";
        }
        return errorStr;
    }
}

let msg = 2.errorMsg;

print(msg);


//3 扩展静态属性
struct Account
{
    var account:Double = 0.0;
    var owner:String = "";
}

// InteresRate 对所有账户类都是一样的不改变的
extension Account
{
    static var InteresRate:Double{
        return 0.55;
    }
}

print(Account.InteresRate);

// 4 扩展方法
// 在原来的类型上扩展方法
extension Double
{
    static var InteresRate = 0.2;
    // 扩展一个实例方法 self 是当前的实例
    func getProfit() ->Double{
        return self * Double.InteresRate;
    }
    
    // 扩展一个静态的方法
    static func getTotalProfit(amount:Double) ->Double{
        return Double.InteresRate * amount;
    }

}
print(8.0.getProfit())

print(Double.getTotalProfit(amount: 10));


// 5 扩展构造器
class Person{
    var name:String = "alex";
    var age:Int = 5;
    init(name:String,age:Int) {
        self.name = name;
        self.age = age;
    }
    
}

// 扩展Person类的构造器
extension Person{
    convenience init(name:String) {
        self.init(name: name, age: 8);
    }
}

let p1 = Person(name: "KKK", age: 555);
let p2 = Person(name: "Dusk");
print(p2.name,p2.age);



