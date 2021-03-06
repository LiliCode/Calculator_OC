//
//  Calculator.m
//  Calculator_OC
//
//  Created by 圈圈科技 on 16/7/1.
//  Copyright © 2016年 圈圈科技. All rights reserved.
//

#import "Calculator.h"
#import "Operator.h"
#import "NSString+Extension.h"
#import <math.h>

@interface Calculator()


@end

@implementation Calculator

+ (instancetype)calcuator
{
    return [[self alloc] init];
}

- (double)computeExpression:(NSString *)expression
{
    //检查表达式语法是否合法
    
    //过滤多余的空格
    NSString *exp = [self filterSpace:expression];
    //修饰表达式
    NSString *modiExp = [self modificationExpression:exp];
    //处理括号
    NSString *subBracketExp = [self disposeBracket:modiExp];
    
    
    
    //元素拆分
    //获取被修饰的操作符
    Operator *oper = [Operator new];
    NSDictionary *modifyOperDic = [oper modifyOperatorList];
    NSMutableArray *addtionElements = [NSMutableArray new];
    NSArray *tempElements = [subBracketExp componentsSeparatedByString:modifyOperDic[@"*"]];
    for (NSString *numberString in tempElements)
    {
        [addtionElements addObject:[numberString mutableCopy]];
    }
    
    //计算加法/乘法操作
    return [self mulCompute:[self elementsModify:@"<DIV>" andElements:addtionElements]];
}



/**
 *  元素修饰
 *
 *  @param modifyOper 需要修饰的符号
 *  @param elements   元素
 *
 *  @return 返回被修饰的元素数组
 */
- (NSArray *)elementsModify:(NSString *)modifyOper andElements:(NSMutableArray *)elements
{
    //获取逆修饰运算符
    Operator *oper = [Operator new];
    NSDictionary *modifyOperDic = [oper reModifyOperatorList];
    
    //元素修饰
    for (NSMutableString *mNumber in elements)
    {
        NSRange range = [mNumber rangeOfString:modifyOper];
        if(range.location >= mNumber.length-1)
        {
            continue;
        }
        
        [mNumber replaceCharactersInRange:range withString:modifyOperDic[modifyOper]];
    }
    
    return elements;
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
    //获取被修饰的操作符
    NSDictionary *modifyOperDic = [oper modifyOperatorList];
    //见缝插针
    for (NSString *op in list)
    {
        //修饰
        NSRange range = NSMakeRange(0, mExpression.length);
        //循环替换
        while (range.location != NSNotFound)
        {
            range = [mExpression rangeOfString:op];
            if(range.location >= mExpression.length-1)
            {
                break;
            }
            
            //替换
            [mExpression replaceCharactersInRange:range withString:modifyOperDic[op]];
        }
    }
    
    return [mExpression copy];
}

/**
 *  处理括号
 *
 *  @param expression 表达式。
 *
 *  @return 返回被处理的表达式
 */
- (NSString *)disposeBracket:(NSString *)expression
{
    NSMutableString *mExpression = [expression mutableCopy];
    
    
    
    
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
    
    for (NSString *number in elements)
    {
        //检查分数
        NSRange range = [number rangeOfString:@"/"];
        if(range.location <= number.length-1)
        {
            //如果遇到分数，就拆分分子和分母
            NSArray *fenshu = [number componentsSeparatedByString:@"/"];
            if(fenshu.count == 2)
            {
                //然后计算分数的值
                product *= 1.0f / [fenshu.lastObject doubleValue];
            }
        }
        else
        {
            product *= [number doubleValue];
        }
    }
    
    return product;
}


/**
 *  过滤空格
 *
 *  @param expression 传入表达式
 *
 *  @return 返回过滤之后的表达式
 */
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




