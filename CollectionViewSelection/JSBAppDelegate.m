//
//  JSBAppDelegate.m
//  CollectionViewSelection
//
//  Created by John Szumski on 2/16/13.
//

#import "JSBAppDelegate.h"
#import "JSBViewController.h"

@implementation JSBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

	self.viewController = [[JSBViewController alloc] init];
	self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
	
    return YES;
}

@end