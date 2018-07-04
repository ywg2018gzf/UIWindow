//
//  YGWAppDelegate.m
//  UIWindow
//
//  Created by Yang guiwen on 2017/10/24.
//  Copyright © 2017年 alrs. All rights reserved.
//

#import "YGWAppDelegate.h"

@interface YGWAppDelegate()<UIApplicationDelegate>

@end

@implementation YGWAppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //1.系统创建window
    self.myWindow = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    //2.系统设置创建window的背景颜色
    self.myWindow.backgroundColor = [UIColor whiteColor];
    
    //添加跟控制器
    UIViewController *rootController = [[UIViewController alloc]init];
    self.myWindow.rootViewController = rootController;
    
    //3.设置为主窗口并显示出来
    [self.myWindow makeKeyAndVisible];
    
    //再创建一个窗口
    UIWindow *otherWindow = [[UIWindow alloc]initWithFrame:CGRectMake(100, 100, 300, 300)];
    otherWindow.backgroundColor = [UIColor yellowColor];
   
    UIViewController *root = [[UIViewController alloc]init];
    otherWindow.rootViewController = root;
    
    [otherWindow makeKeyAndVisible];
    
    //创建两个输入框
    UITextField *tex1 =[[UITextField alloc]initWithFrame:CGRectMake(10, 10, 200, 400)];
    tex1.backgroundColor = [UIColor darkTextColor];
    tex1.borderStyle = UITextBorderStyleRoundedRect;
    [self.myWindow addSubview:tex1];
    
    UITextField *tex2 =[[UITextField alloc]initWithFrame:CGRectMake(10, 10, 100, 400)];
    tex1.borderStyle = UITextBorderStyleRoundedRect;
    [otherWindow addSubview:tex2];
    
    return YES;
}

@end
