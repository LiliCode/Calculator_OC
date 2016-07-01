//
//  Operator.h
//  Calculator_OC
//
//  Created by 圈圈科技 on 16/7/1.
//  Copyright © 2016年 圈圈科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operator : NSObject

/**
 *  获取运算符列表
 *
 *  @return 返回列表
 */
- (NSArray *)operatorList;

/**
 *  修饰操作符，英文化操作符
 *
 *  @return 返回被修饰会的操作符字典
 */
- (NSDictionary *)modifyOperatorList;


/**
 *  逆修饰操作符，英文符号化
 *
 *  @return 返回逆修饰的操作符
 */
- (NSDictionary *)reModifyOperatorList;

/**
 *  加法运算
 *
 *  @param a 被加数
 *  @param b 加数
 *
 *  @return 返回和
 */
- (double)add:(double)a :(double)b;

/**
 *  减法运算
 *
 *  @param a 被减数
 *  @param b 减数
 *
 *  @return 返回差
 */
- (double)sub:(double)a :(double)b;

/**
 *  乘法运算
 *
 *  @param a 因数
 *  @param b 因数
 *
 *  @return 返回积
 */
- (double)mul:(double)a :(double)b;

/**
 *  除法运算
 *
 *  @param a 被除数
 *  @param b 除数
 *
 *  @return 返回商
 */
- (double)div:(double)a :(double)b;


@end


