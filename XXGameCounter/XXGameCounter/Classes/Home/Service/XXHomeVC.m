//
//  XXHomeVC.m
//  XXGameCounter
//
//  Created by XX on 2023/7/7.
//

#import "XXHomeVC.h"

#import "XXGameCounterVC.h"


@interface XXHomeVC ()

@property (nonatomic, strong) UIButton *btn_counter;

@end

@implementation XXHomeVC

// MARK: - Life Cycle
- (instancetype)init {
    if (self = [super init]) {
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.view.backgroundColor = [UIColor cyanColor];
    
    [self setupUI];
    [self setupData];
}


// MARK: - UI
- (void)setupUI {
    [self.view addSubview:self.btn_counter];
    
    [self.btn_counter mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
}


// MARK: - Data
- (void)setupData {
    
}


// MARK: - Event Response
- (void)jumpToGameCounter:(id)sender {
    XXGameCounterVC *vc = [[XXGameCounterVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


// MARK: - Public Methods


// MARK: - Private Methods


// MARK: - Overiding Methods


// MARK: - Delegate


// MARK: - Request


// MARK: - Setter


// MARK: - Getter
- (UIButton *)btn_counter {
    if (!_btn_counter) {
        _btn_counter = [[UIButton alloc] init];
        [_btn_counter setTitle:@"  Jump To Counter  " forState:UIControlStateNormal];
        [_btn_counter setBackgroundColor:[UIColor blackColor]];
        [_btn_counter setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btn_counter addTarget:self action:@selector(jumpToGameCounter:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _btn_counter;
}

@end
