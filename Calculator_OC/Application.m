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
    long double result = [cal computeExpression:@"10+50-5*6"];
    
    NSLog(@"result = %Lg", result);
    
    return 0;
}

