# DCTimerManager
Use DCTimerManager, Just need one code to make a timer , and you not have to invalid the timer, it could not make a circle refrence, more safe and convenient'.

### 如何安装

安装
==============

### CocoaPods

1. 在 Podfile 中添加  `pod 'DCTimerManager'`。
2. 导入 \<DCTimerManager/DCTimerManager.h\>。


### 手动安装

1. 下载 DCTimerManager 文件夹内的所有内容。
2. 将 DCTimerManager 内的源文件添加(拖放)到你的工程。


使用
==============

###将定时器交给 DCTimerManager 集中管理, 


```objc

// 定时执行操作
[[DCTimerManager shareInstance] timerWithTimerName:@"timerName" timeInterval:2.0 repeat:YES action:^{
    // do something ....

}];

// invalidate 定时器 不是必须的;  
[[DCTimerManager shareInstance] invalidateWithName:@"timerName"];

```

### DCTimer

```objc

// 若需要, 你也可以这样: 
// invalidate 定时器 不是必须的, 不会造成循环引用.

DCTimer *timer = [[DCTimer alloc]initWithTimeName:@"timerName2" fireTime:2.0 timeInterval:2.0 target:self selector:@selector(someSelector) repeat:YES];
_timer = timer;

```



许可证
==============
DCTimerManager 使用 MIT 许可证，详情见 LICENSE 文件。
