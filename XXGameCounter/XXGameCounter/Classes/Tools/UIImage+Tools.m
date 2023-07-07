//
//  UIImage+Tools.m
//  XXGameCounter
//
//  Created by Xia on 2023/7/7.
//

#import "UIImage+Tools.h"

@implementation UIImage (Tools)

+ (UIImage *)ctRoundRectImageWithFillColor:(UIColor *)fillColor cornerRadius:(CGFloat)cornerRadius {
    return [self ctRoundRectImageWithFillColor:fillColor borderColor:nil borderWidth:0.0f cornerRadius:cornerRadius];
}

+ (UIImage *)ctRoundRectImageWithFillColor:(UIColor *)fillColor borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth cornerRadius:(CGFloat)cornerRadius {
    CGFloat halfBorderWidth = borderWidth * 0.5f;
    CGFloat w = cornerRadius + halfBorderWidth;
    
    CGFloat dw = w * 2 +2;
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(dw, dw), NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(halfBorderWidth, halfBorderWidth, dw - borderWidth, dw - borderWidth) cornerRadius:cornerRadius];
    [fillColor setFill];
    [path fill];
    
    if (borderWidth > 0.0f && borderColor) {
        [borderColor setStroke];
        path.lineWidth = borderWidth;
        [path stroke];
    }
    
    CGContextAddPath(context, path.CGPath);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(w+1, w+1, w+1, w+1)];
}

@end
