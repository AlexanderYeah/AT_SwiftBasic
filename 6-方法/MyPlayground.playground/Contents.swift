import UIKit


// 1 创建一个实体类 再起里面顶一个实例方法
class Account{
    var ammount:Double = 10000.00;// 账户金额
    var owner:String = "Alex";// 所有者
    // 利息计算公式
    func calculateInterestWithRate(rate:Double) -> Double {
        return rate * ammount;
    }
    
}

// 创建一个实例对象 调用实例方法
var myAccount = Account();
myAccount.ammount = 1000000;
print(myAccount.calculateInterestWithRate(rate: 0.02));

// 1.1 方法和函数的区别
// 方法的调用前面有主题 而函数不需要
// 方法是在枚举 结构体 或者类 内部而定义的
// 方法命名规范与函数不同


// 2 结构体和枚举中的方法变异
class Employee{
    var no : Int = 0;
    var name : String?;
    var job:String?;
    var dept:Department?
}


struct Department{
    var no:Int = 0;
    var name:String = "";
    var employees:[Employee] = [Employee]();
    // 将方法生成变异的 用mutating 关键字修饰
    // 在枚举和结构体重声明变异的方法内部才能修改变量的属性 否则编译器会进行报错处理
    mutating func insertObjInsetToArray(anyobj:AnyObject, idx:Int) -> () {
        let obj = anyobj as! Employee;
        employees.insert(obj, at: idx);
    }
}

var dept = Department();


var emp1 = Employee();
emp1.name = "Tom";
dept.insertObjInsetToArray(anyobj: emp1, idx: 0);

var emp2 = Employee();
emp2.name = "Alex";
dept.insertObjInsetToArray(anyobj: emp2, idx: 0);


print(dept.employees.count)

// 3 静态方法
// 也称之为类型方法
// 类型包括 枚举 结构体 和 类

struct Dog{
    var name:String = "jerry";
    static var age:Int = 5;
    // 在静态方法内部不能访问实例的属性 可以访问静态属性
    static func sayHi() ->(){
        print("hello i am \(age)");
    }
    func run() -> () {
        print("run run run \(name)");
    }
}

var d = Dog();
// 静态方法使用类方法进行调用 示例方法创建对象调用
d.run()
Dog.sayHi();


// 关键字class 定义静态方法
class Cat{
    
    // 定义静态属性
    static var name:String = "Edison";
    // 关键字class 定义静态方法
    class func eat()->()
    {
        print("i want eat \(name)");
    }
    
}

Cat.eat()






