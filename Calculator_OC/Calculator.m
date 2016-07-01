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
    
    
    return .0f;
}



@end




