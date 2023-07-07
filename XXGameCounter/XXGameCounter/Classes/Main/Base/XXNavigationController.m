//
//  XXNavigationController.m
//  XXGameCounter
//
//  Created by Xia on 2023/7/7.
//

#import "XXNavigationController.h"

@interface XXNavigationController ()

@end

@implementation XXNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.childViewControllers.count == 1) viewController.hidesBottomBarWhenPushed = YES;
    
    
    [super pushViewController:viewController animated:animated];
}

@end
