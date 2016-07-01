//
//  Calculator.m
//  Calculator_OC
//
//  Created by 圈圈科技 on 16/7/1.
//  Copyright © 2016年 圈圈科技. All rights reserved.
//

#import "Calculator.h"
#import "Operator.h"

@implementation Calculator

+ (instancetype)calcuator
{
    return [[self alloc] init];
}

- (double)computeExpression:(NSString *)expression
{
    //过滤多余的空格
    NSString *exp = [self filterSpace:expression];
    //修饰表达式
    NSString *modiExp = [self modificationExpression:exp];
    //元素拆分
    
    
    
    return .0f;
}


/**
 *  修饰表达式
 *
 *  @param expression 未经修饰的表达式
 *
 *  @return 返回经过修饰之后的表达式
 */
- (NSString *)modificationExpression:(NSString *)expression
{
    NSMutableString *mExpression = [expression mutableCopy];
    
    //获取操作符列表
    Operator *oper = [Operator new];
    NSArray *list = [oper operatorList];
    //见缝插针
    for (NSString *op in list)
    {
        if ([op isEqualToString:@"-"] || [op isEqualToString:@"/"])
        {
            continue;
        }
        
        //修饰
        
    }
    
    return [mExpression copy];
}


/**
 *  处理加法
 *
 *  @param elements 所有参加加法运算的元素
 *
 *  @return 返回和
 */
- (double)addCompute:(NSArray *)elements
{
    double sum = 0;
    
    for (NSNumber *number in elements)
    {
        sum += [number doubleValue];
    }
    
    return sum;
}

/**
 *  处理乘法
 *
 *  @param elements 所有参加乘法运算的元素
 *
 *  @return 返回积
 */
- (double)mulCompute:(NSArray *)elements
{
    double product = 1;
    
    for (NSNumber *number in elements)
    {
        product *= [number doubleValue];
    }
    
    return product;
}


- (NSString *)filterSpace:(NSString *)expression
{
    NSMutableString *mExpression = [expression mutableCopy];
    //找到空格所在的位置
    NSRange range = NSMakeRange(0, mExpression.length);
    //循环遍历删除
    while (range.location != NSNotFound)
    {
        NSRange range = [mExpression rangeOfString:@" "];
        
        if(range.location >= mExpression.length-1)
        {
            break;
        }
        
        //删除
        [mExpression deleteCharactersInRange:range];
    }
    
    return [mExpression copy];
}


@end




