//
//  XXCounterView.m
//  XXGameCounter
//
//  Created by Xia on 2023/7/7.
//

#import "XXCounterView.h"

@interface XXCounterView ()

@property (nonatomic, strong) UILabel *lb_name;
@property (nonatomic, strong) UILabel *lb_count;
@property (nonatomic, strong) UIButton *btn_up;
@property (nonatomic, strong) UIButton *btn_down;

@property (nonatomic, assign) NSUInteger count;

@end

@implementation XXCounterView

// MARK: - Life Cycle
- (instancetype)init {
    if (self = [super init]) {
        [self setupUI];
        [self setupData];
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
}


// MARK: - UI
- (void)setupUI {
    [self addSubview:self.lb_name];
    [self addSubview:self.lb_count];
    [self addSubview:self.btn_up];
    [self addSubview:self.btn_down];
    
    [self.lb_name mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.lb_count.mas_top);
        make.centerX.equalTo(self.lb_count);
    }];
    
    [self.lb_count mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
    
    [self.btn_up mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.and.left.and.right.equalTo(self);
        make.bottom.equalTo(self.btn_down.mas_top);
        make.height.equalTo(self.btn_down);
    }];
    
    [self.btn_down mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.right.and.bottom.equalTo(self);
    }];
}


// MARK: - Data
- (void)setupData {
    self.count = 20;
}


// MARK: - Event Response
- (void)clickedUp:(UIButton *)sender {
    ++self.count;
}

- (void)clickedDown:(UIButton *)sender {
    --self.count;
}


// MARK: - Public Methods


// MARK: - Private Methods


// MARK: - Overiding Methods


// MARK: - Delegate


// MARK: - Request


// MARK: - Setter
- (void)setCount:(NSUInteger)count {
    _count = count;
    
    self.lb_count.text = [NSString stringWithFormat:@"%ld", count];
}


// MARK: - Getter
- (UILabel *)lb_name {
    if (!_lb_name) {
        _lb_name = [[UILabel alloc] init];
        _lb_name.textColor = [UIColor whiteColor];
        _lb_name.font = [UIFont systemFontOfSize:15.f];
        _lb_name.text = @"Player 1";
    }
    
    return _lb_name;
}

- (UILabel *)lb_count {
    if (!_lb_count) {
        _lb_count = [[UILabel alloc] init];
        _lb_count.textColor = [UIColor whiteColor];
        _lb_count.font = [UIFont boldSystemFontOfSize:105.f];
        _lb_count.text = @"0";
    }
    
    return _lb_count;
}

- (UIButton *)btn_up {
    if (!_btn_up) {
        _btn_up = [[UIButton alloc] init];
        [_btn_up setBackgroundImage:[UIImage ctRoundRectImageWithFillColor:[UIColor colorWithHexString:@"0xFAFAFA"] cornerRadius:0] forState:UIControlStateHighlighted];
        [_btn_up addTarget:self action:@selector(clickedUp:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _btn_up;
}

- (UIButton *)btn_down {
    if (!_btn_down) {
        _btn_down = [[UIButton alloc] init];
        [_btn_down setBackgroundImage:[UIImage ctRoundRectImageWithFillColor:[UIColor colorWithHexString:@"0xFAFAFA"] cornerRadius:0] forState:UIControlStateHighlighted];
        [_btn_down addTarget:self action:@selector(clickedDown:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _btn_down;
}

@end
