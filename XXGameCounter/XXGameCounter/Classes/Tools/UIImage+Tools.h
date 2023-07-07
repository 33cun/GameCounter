//
//  UIImage+Tools.h
//  XXGameCounter
//
//  Created by Xia on 2023/7/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Tools)

+ (UIImage *)ctRoundRectImageWithFillColor:(UIColor *)fillColor cornerRadius:(CGFloat)cornerRadius;

+ (UIImage *)ctRoundRectImageWithFillColor:(UIColor *)fillColor borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth cornerRadius:(CGFloat)cornerRadius;

@end

NS_ASSUME_NONNULL_END
