//
//  Calculator.h
//  Calculator_OC
//
//  Created by 圈圈科技 on 16/7/1.
//  Copyright © 2016年 圈圈科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject


/**
 *  创建计算器
 *
 *  @return 返回计算器实例
 */
+ (instancetype)calcuator;

/**
 *  计算表达式的值
 *
 *  @param expression 输入的表达式
 *
 *  @return 返回结算结果
 */
- (double)computeExpression:(NSString *)expression;


@end


