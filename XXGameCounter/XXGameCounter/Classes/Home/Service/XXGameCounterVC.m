//
//  XXGameCounterVC.m
//  XXGameCounter
//
//  Created by Xia on 2023/7/7.
//

#define kBtnWH 43.f

#import "XXGameCounterVC.h"

#import "XXCounterView.h"

@interface XXGameCounterVC ()

@property (nonatomic, strong) XXCounterView *v_left;
@property (nonatomic, strong) XXCounterView *v_right;
@property (nonatomic, strong) UIButton *btn_setting;

@end

@implementation XXGameCounterVC

// MARK: - Life Cycle
- (instancetype)init {
    if (self = [super init]) {
        
    }
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    [self setupUI];
    [self setupData];
}


// MARK: - UI
- (void)setupUI {
    [self.view addSubview:self.v_left];
    [self.view addSubview:self.v_right];
    [self.view addSubview:self.btn_setting];
    
    [self.v_left mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.and.bottom.and.left.equalTo(self.view);
        make.right.equalTo(self.v_right.mas_left).inset(10);
        make.size.equalTo(self.v_right);
    }];
    
    [self.v_right mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.and.bottom.and.right.equalTo(self.view);
        make.width.equalTo(self.v_left);
    }];
    
    [self.btn_setting mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(kBtnWH);
    }];
}


// MARK: - Data
- (void)setupData {
    
}


// MARK: - Event Response
- (void)clickedSetting:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


// MARK: - Public Methods


// MARK: - Private Methods


// MARK: - Overiding Methods


// MARK: - Delegate


// MARK: - Request


// MARK: - Setter


// MARK: - Getter
- (XXCounterView *)v_left {
    if (!_v_left) {
        _v_left = [[XXCounterView alloc] init];
        _v_left.backgroundColor = [UIColor blueColor];
    }
    
    return _v_left;
}

- (XXCounterView *)v_right {
    if (!_v_right) {
        _v_right = [[XXCounterView alloc] init];
        _v_right.backgroundColor = [UIColor redColor];
    }
    
    return _v_right;
}

- (UIButton *)btn_setting {
    if (!_btn_setting) {
        _btn_setting = [[UIButton alloc] init];
        _btn_setting.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [_btn_setting setImage:[UIImage imageNamed:@"button.programmable"] forState:UIControlStateNormal];
        [_btn_setting addTarget:self action:@selector(clickedSetting:) forControlEvents:UIControlEventTouchUpInside];
        [_btn_setting setBackgroundImage:[UIImage ctRoundRectImageWithFillColor:[UIColor blackColor] cornerRadius:(kBtnWH / 2)] forState:UIControlStateNormal];
    }
    
    return _btn_setting;
}

@end
