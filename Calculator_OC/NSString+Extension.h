//
//  NSString+Extension.h
//  Calculator_OC
//
//  Created by 圈圈科技 on 16/7/4.
//  Copyright © 2016年 圈圈科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)

/**
 *  从某一个区间提取字符串
 *
 *  @param startString 起始字符串
 *  @param endString   结束字符串
 *
 *  @return 返回该区间内的字符串
 */
- (NSString *)substringFromStart:(NSString *)startString andEnd:(NSString *)endString range:(NSRange *)range;


@end
