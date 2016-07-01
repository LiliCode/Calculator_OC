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

- (long double)computeExpression:(NSString *)expression
{
    //得到操作符列表
    Operator *oper = [Operator new];
    NSArray *operList = [oper operatorList];
    //过滤多余的空格
    NSString *exp = [self filterSpace:expression];
    
    
    
    return .0f;
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




