import UIKit

var str = "Hello, playground"


// 1 类的继承
// 继承只能发生在类类型上,不能发生在枚举和结构体上面

// 2 构造器过程中的安全检查
// 类的构造过程有一下
// 第一步：类的构造过程中包含两个阶段，第一步分配内存,初始化子类存储属性，沿着构造器链向上初始化父类存储属性。
// 第二步：从顶部构造器链往下，对每个类进行进一步修改存储属性，调用实例方法等处理。

// 创建一个person 类
class Person {
    var name:String;
    var age:Int;
    
    init() {
        self.name = "";
        self.age = 12;
        
    }
}


// 创建一个Student 继承
class Student:Person{
    var school: String;
    override init() {
        // 安全检查第一步，确保子类所有的属性初始完成之后，才可初始化父类的属性
        // 子类的初始化属性 必须放在向上调用父类构造器代理之前
        // 也就是 放在super.init 之前
        school = "Peking";
        super.init();
        
        // 安全检查第二步 为继承的属性设置新的值放在调用super.init之后
        self.name = "Klay";
    }
    
    // 3 便利构造器
    // 便利构造器必须小调用其他构造器代理人,然后再为任意属性赋新值
    convenience init(name:String) {
        self.init();
        self.name = name;
    }
    
}

var s = Student(name: "curry");
print(s.name);

// 3 构造器继承
// 类的构造器来源有两种，自己编写和父类继承,继承的条件
// 如果子类没有指定构造器 自动继承父类的构造器
// 如果子类提供了所有父类指定构造器的实现，无论是通过条件1继承过来的，还是通过自己编写的，都自动继承父类所有父类的便利构造器


// 4 重写
// 一个类继承另外一个类的属性

// 4.1 属性重写

class P1{
    var name:String;
    var age:Int;
    init(name:String,age:Int) {
        self.name = name;
        self.age = age;
    }
}

class S1:P1{
    
    var schoole:String;
    
    // 重写子类的属性
    override var age: Int{
        get{
            return super.age;
        }
        
        set{
            super.age = newValue < 12 ? 12 :newValue;
        }
    }
    
    init(name: String, age: Int,schoole:String) {
        self.schoole = schoole;
        super.init(name: name, age: age);
    }
}

var s1 = S1(name: "Mike", age: 85, schoole: "kkk");
s1.age = 2;
print(s1.age);



// 4.2 方法重写
// 在子类中重写父类继承来的实例方法和静态方法
class P3 {
    var name:String;
    var age:Int;
    init(name:String,age:Int) {
        self.name = name;
        self.age = age;
    }
    
    func printInfo() -> () {
        print("name--\(self.name),age---\(self.age)");
    }
    
    class func sayHi() -> ()
    {
        print("hello , i am parrent");
    }
    
}

class S3:P3{
    
    // 重写实例方法
    override func printInfo() ->() {
        print("Child Print name--\(self.name),age---\(self.age)");
    }
    
    // 重写静态方法
    override class func sayHi() -> ()
    {
        print("hello , i am child");
    }
    
}

var s3 = S3(name: "ANT", age: 12);
s3.printInfo();
S3.sayHi();

// 4.3 下标重写

// 在类的定义前面使用final 关键字，表示此类不能别继承

// 5 类型检查与转换
// 5.1 is 操作符 判断一个实例是否是某个类的类型 是的话返回true
if s3 is S3{
    print(true)
}

// 5.2 使用as操作符
// 对象类型转换一定发生在继承的前提下

// 5.3 Any 和 AnyObject

// AnyObject 可以表示任何类的实例
// Any 可以表示任何类型 包括类和其他数据类型 Int Double 等基本数据类型

