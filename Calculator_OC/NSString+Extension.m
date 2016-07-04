//
//  NSString+Extension.m
//  Calculator_OC
//
//  Created by 圈圈科技 on 16/7/4.
//  Copyright © 2016年 圈圈科技. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (NSString *)substringFromStart:(NSString *)startString andEnd:(NSString *)endString range:(NSRange *)range
{
    //起始字符串的位置和长度
    NSRange startRange = [self rangeOfString:startString];
    //结束字符串的位置和长度
    NSRange endRange = [self rangeOfString:endString];
    
    //判断位置是否合法
    if(startRange.location > self.length-1 || endRange.location > self.length-1)
    {
        return nil;
    }
    
    //判断截取长度是否合法
    if(endRange.location < (startRange.location + startRange.length))
    {
        return nil;
    }
    
    //被截取的长度
    NSRange subRange = NSMakeRange(startRange.location + startRange.length, endRange.location - (startRange.location + startRange.length));
    //传出range指针
    *range = subRange;
    
    //截取并返回
    return [self substringWithRange:subRange];
}

@end



