//
//  Application.m
//  Calculator_OC
//
//  Created by 圈圈科技 on 16/7/1.
//  Copyright © 2016年 圈圈科技. All rights reserved.
//

#import "Application.h"
#import "Calculator.h"

int ApplicationMain(int argc, const char **argv)
{
    Calculator *cal = [Calculator calcuator];
    NSString *expression = @"23 - 43 + 12 + 3";
    double result = [cal computeExpression:expression];
    
    NSLog(@"%@ = %g", expression, result);
    
    return 0;
}

