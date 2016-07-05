//
//  AppDelegate.m
//  SplitDemo
//
//  Created by xiushanfan on 7/4/16.
//  Copyright © 2016 Frank. All rights reserved.
//

#import "AppDelegate.h"
#import "SplitViewController.h"
#import "MasterViewController.h"
#import "DetailViewController.h"
#import "ManaController.h"

#define SCREEN_WIDTH        [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT       [UIScreen mainScreen].bounds.size.height

@interface AppDelegate () {
    ManaController *manaCon;
    SplitViewController *vc;
}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    vc = [[SplitViewController alloc] init];
    manaCon = [[ManaController alloc] init];
    vc.delegate = manaCon;
    
    MasterViewController *masterVC = [[MasterViewController alloc] init];
    masterVC.delegate = manaCon;
    DetailViewController *detailVC = [[DetailViewController alloc] init];
    
    manaCon.masterVC = masterVC;
    manaCon.detailVC = detailVC;
    
    vc.viewControllers = @[masterVC,detailVC];
    vc.view.backgroundColor = [UIColor grayColor];
    
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
