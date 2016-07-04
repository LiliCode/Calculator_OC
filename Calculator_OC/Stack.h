//
//  Stack.h
//  Stack_OC
//
//  Created by Lili on 16/7/4.
//  Copyright © 2016年 李立. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject

@property (assign , nonatomic, readonly) NSUInteger stackCount;    //栈的深度
@property (strong , nonatomic, readonly) id stackPointer;          //栈顶指针


/**
 *  创建栈
 *
 *  @return 返回当前栈
 */
+ (instancetype)stack;

/**
 *  压栈
 *
 *  @param element 需要压入栈的元素
 */
- (void)push:(id)element;

/**
 *  弹栈
 */
- (id)pop;

/**
 *  输出栈
 */
- (void)show;


@end
