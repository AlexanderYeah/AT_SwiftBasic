import UIKit

var str = "Hello, playground"

// 1 初始化一个空的字符串 用var修饰表示可变字符串 用let表示不可变
let str1 = "";
var str2 = String();
// 判断字符串是否为空
if str1.isEmpty
{
    print("isEmpty");

}


// 2 遍历字符串
for char in "Alexander" {
    print(char);
}

// 3 字符
let char1:Character = "a";
print(char1);

// 4 字符串拼接
// 4.1 直接相加
var dog = "dog";
var cat = "cat";
var d_c1 = dog + cat;

// 4.2 += 操作符
cat += dog;
// 4.3 append
cat.append(dog);

// 5 字符串插值 是一种构建新字符串的方式，可以在其中包含常量、变量、字面量和表达式。
let time = 2;
let message = "\(time) is 2"


// 6 计算字符串的数量
let myname = "alexanderYeah";
myname.count;

// 7 字符串的索引 每一个String值都有一个关联的索引(index)类型，String.Index，它对应着字符串中的每一个Character的位置。
// 获取第一个字符
myname[myname.startIndex];
// 取到末尾的字符
myname[myname.index(before: myname.endIndex)];
// 取到第5个字符
myname[myname.index(myname.startIndex, offsetBy: 5)];


// 8 字符串的插入元素
var hello  = "hello";
// 插入字符
hello.insert("!", at: hello.endIndex);
// 插入字符串
hello.insert(contentsOf: "who are you", at: hello.endIndex);
// 删除第5个字符 删除 ！
hello.remove(at: hello.index(hello.startIndex, offsetBy: 5));

// 0-5的范围
let range = hello.startIndex ..< hello.index(hello.startIndex, offsetBy: 5);
// 删除hello
hello.removeSubrange(range);


// 9 子字符串 从字符串中获取一个子字符串
let welcome = "welcome to shanghai!";
let index = welcome.lastIndex(of: "!");


// 10 字符串的比较
var cp_msg1 = "alsd";
var cp_msg2 = "alex"

if cp_msg1 == cp_msg2 {
    print("isEqual");
}else{
    print("not equal");
}

























