//
//  Operator.m
//  Calculator_OC
//
//  Created by 圈圈科技 on 16/7/1.
//  Copyright © 2016年 圈圈科技. All rights reserved.
//

#import "Operator.h"

@implementation Operator



- (double)add:(double)a :(double)b
{
    return a + b;
}


- (double)sub:(double)a :(double)b
{
    return a - b;
}


- (double)mul:(double)a :(double)b
{
    return a * b;
}


- (double)div:(double)a :(double)b
{
    return a / b;
}


- (NSArray *)operatorList
{
    return @[@"+", @"-", @"*", @"/"];
}


- (NSDictionary *)modifyOperatorList
{
    return @{@"+":@"<ADD>", @"-":@"<ADD><SUB>", @"*":@"<MUL>", @"/":@"<MUL><DIV>"};
}


@end



