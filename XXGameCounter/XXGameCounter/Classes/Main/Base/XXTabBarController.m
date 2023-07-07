//
//  XXTabBarController.m
//  XXGameCounter
//
//  Created by XX on 2023/7/7.
//

#import "XXTabBarController.h"

#import "XXHomeVC.h"
#import "XXSettingVC.h"


@interface XXTabBarController ()

@end

@implementation XXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI {
    NSMutableArray *controllers = [NSMutableArray arrayWithCapacity:0];
    
    XXHomeVC *homeVC = [[XXHomeVC alloc] init];
    [controllers addObject:[self addChild:homeVC title:@"Home" image:@"house.fill" selecterImage:@"house.fill"]];
    
    XXSettingVC *settingVC = [[XXSettingVC alloc] init];
    [controllers addObject:[self addChild:settingVC title:@"Setting" image:@"person.circle" selecterImage:@"person.circle"]];
    
    self.viewControllers = controllers;
}

- (id)addChild:(UIViewController*)child title:(NSString*) title image:(NSString*)image selecterImage:(NSString *)selecterImage {
    UIImage *selectImage = [UIImage systemImageNamed:selecterImage];
    selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    child.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:[UIImage systemImageNamed:image] selectedImage:selectImage];
    
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:child];
    
    return navi;
}

@end
