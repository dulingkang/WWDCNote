# WWDCNote
WWDC note every year.

> 新特性：基本类型、类型匹配、可检查性、协议扩展、错误处理

---

## 基本类型
###枚举
```
enum Animals {
    case Dog, Cat, Troll, Dragon
}
let a = Animals.Dragon
```

- 在枚举中加入类型:

```
enum Either<T1, T2> {
    case First(T1)
    case Second(T2)
}
```

- 递归枚举
递归枚举中需要加入indirect修饰：
```
enum Tree<T> {
    case Leaf(T)
    indirect case Node(Tree, Tree)
}
```

### do 用法

```
do {
    let a = Animals.Troll
    print(a)
}
```

repeat ... while:

```
repeat {
let a = Animals.Dog
print(a)
} while(false)
```

### Option Sets

```       
 var viewAnimationOptions: UIViewAnimationOptions = [.Repeat, .CurveEaseIn, .TransitionCurlUp]
 viewAnimationOptions = []
 if viewAnimationOptions.contains(.TransitionCurlUp) {        
        }
```

- 定义一个Option Set

```
struct MyFontStyle: OptionSetType {
    let rawValue: Int
    static let Bold = MyFontStyle(rawValue: 1)
    static let Italic = MyFontStyle(rawValue: 2)
    static let Underline = MyFontStyle(rawValue: 4)
    static let Strikethrogh = MyFontStyle(rawValue: 8)
}
var myFont: MyFontStyle = []
myFont = [.Underline]
myFont = [.Bold, .Italic]
if myFont.contains(.Strikethrogh) {
    print("yes")
}
```

### 函数和方法
- 所有函数的定义都是一样的，调用时，第一个label隐藏，以后的Label会显示：

```
class Widget {
    func save(name: String, encrypt: Bool) {
    }
}
let widget = Widget()
widget.save("go", encrypt: true)
```

- 如果如果想让第一个函数Label显示出来，可以这样：

```
func save(name name: String,  encrypt: Bool) {}
widget.save(name: "go", encrypt: false)
```

- 如果想让哪一个参数隐藏，可以在label前面加_和一个空格：

```
func save(name name: String, _ encrypt: Bool) {}
widget.save(name: "go",  false)
```

### 警告给出提示
- 在结构体中定义的函数中，如果更改了结构体中的变量，需要用mutating修饰函数：

```
struct MyCoordinates {
    var points: [CGPoint]
    mutating func updatePoint() {
        points[20].x = 20
    }
}
```

- var和let的提示，不变的变量用let，使用中会给变量赋值的用var

## 类型匹配
用guard来确保存在：

```
func process(json: AnyObject) -> Either<String,String> {
    guard let name = json["name"] as? String,
        let year = json["year"] as? Int else {
            return .Second("bad input")
    }
    print(name, year)
}
```

- 用switch类型匹配

```
switch bar() { 
case .MyEnumCase(let value):where value != 42:
 doThing(value)
default: break
}
```
可以这样写：

```
if case .MyEnumCase(let value) = bar() where value != 42 { doThing(value)
}
```

- for ... in
未完待续。。。







## 可检查性
## 协议扩展
## 错误处理
