1. Timestamped Event Matching Error: Failed to find matching element
    uitests自动生成的代码经常报TimeStamped Event Matching Error:Failed to find matching element ,这个大多数原因是由于控件id变化导致的，所以对于id动态变化一般都通过下标形式查找到相应的控件
2. Your maximum App ID limit has been reached. You may create up to 10 App IDs every 7 days.（你的最大应用程序的最大限度已达到。你可以创建10个应用程序，每7天。） 参考http://www.jianshu.com/p/9f0cd768f4af(简书上的) 

单元测试相关库：KIF
[使用KIF 进行 iOS UI 测试](http://www.tuicool.com/articles/euaayy)
[源码](https://git.oschina.net/huosan/kif-tutorial-final.git)


命名规范


BDD行为驱动开发

1. 消息格式化
指责：负责为给定的时间对象进行文本消息格式化。

格式化工具 
抽象化为实现对象


测试实现：



测试行为：

2. 下载器



3. 登陆VC测试


Storyboard高级使用



## swift 中遇到的问题
Mock
[手动模拟数据](https://github.com/huos3203/Quick/blob/master/Documentation/zh-cn/TestUsingTestDoubles.md)

Mock让你可以检查某种情况下，一个方法是否被调用，或者一个属性是否被正确设值。比如，viewDidLoad()后，某些属性是否被设值。

objc下可以使用OCMock来mock对象。但是，由于swift的runtime比较弱，所以，swift上一般要手动写mock。

Stub

如果你跟别人协同开发时，别人的模块还没有完成，而你需要用到别人的模块，这时，就要用到Stub。比如，后端的接口未完成，而你的代码已经完成了。Stub可以伪造了一个调用的返回。

ojbc下可以使用OHHTTPStubs来伪造网络的数据返回。swift下，仍要手动写stub。

[Mocking in Swift](http://stackoverflow.com/questions/24174130/mocking-in-swift)

[NShipster](http://nshipster.com/xctestcase/#mocking-in-swift)
There are a couple of open source libraries for creating mock objects and stubbing method calls, but these libraries largely rely on Objective-C runtime manipulation, something that is not currently possible with Swift.
[单元测试](http://nshipster.cn/unit-testing/)

[Kiwi 使用进阶 Mock, Stub, 参数捕获和异步测试](https://onevcat.com/2014/05/kiwi-mock-stub-test/)

### swift内省机制的变更
[Get a user-readable version of the class name in swift (in objc NSStringFromClass was fine)](http://stackoverflow.com/questions/24107658/get-a-user-readable-version-of-the-class-name-in-swift-in-objc-nsstringfromclas)

在swift3中如下效果：
```swift
let name:AnyClass! = object_getClass(SignInViewController.self)
let str = NSStringFromClass(SignInViewController.self)
let dd = String.init(describing: SignInViewController.self)
let ddd = String(describing: type(of: SignInViewController.self))
print("\(ddd)-------\(dd)----------\(name!)---------\(str)")

SignInViewController.Type-------SignInViewController----------BDDExamplesSwift.SignInViewController---------BDDExamplesSwift.SignInViewController
------------
```

如果还想通过NSStringFromClass方式获取：
```
NSStringFromClass(self).components(separatedBy: ".").last!
```
>至此就需要用这种方式来修改原有库中NSStringFromClass实现。

优化在OC代码中使用NSStringFromClass方式获取类名称字符串：
```diff
++ (NSString *)storyboardIdentifierForClass:(Class)theClass;
{
    NSString *className = NSStringFromClass(theClass);
+   NSArray *swiftClassName = [className componentsSeparatedByString:@"."];

+   if ([swiftClassName count]>0)
+   {
+       className = swiftClassName[1];
+   }

    return className;
}
```
### Selecter方法选择器

swift版本：
1. 直接
```swift
let action:Selector = #selector(ViewController.test)
```
2. Selceter通过方法签名来获取
```swift
let method:Selecter = #selector(nihao(hh:))
self.perform(selc, with: "dfdf")

func nihao(hh:String)
{
    print("---\(hh)")
}
```
oc版本：
```objc
-(id) performSelector: selector

SEL sel = @selector (start:) ; // 指定action  
if ([obj respondsToSelector:sel]) 
{   //判断该对象是否有相应的方法  
[obj performSelector:sel withObject:self]; //调用选择器方法  
} 
```
#### 更多内省(introspection)机制运行时API
(BOOL) isKindOfClass: classObj 用来判断是否是某个类或其子类的实例    
-(BOOL) isMemberOfClass: classObj 用来判断是否是某个类的实例   
-(BOOL) respondsToSelector: selector 用来判断是否有以某个名字命名的方法(被封装在一个selector的对象里传递)   
+(BOOL) instancesRespondToSelector: selector 用来判断实例是否有以某个名字命名的方法. 和上面一个不同之处在于, 前面这个方法可以用在实例和类上，而此方法只能用在类上.    

