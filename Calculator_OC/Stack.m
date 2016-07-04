//
//  Stack.m
//  Stack_OC
//
//  Created by Lili on 16/7/4.
//  Copyright © 2016年 李立. All rights reserved.
//

#import "Stack.h"

@interface Stack()
@property (strong , nonatomic) NSMutableArray *stackArray;
@property (strong , nonatomic) id topPointer;

@end

@implementation Stack


+ (instancetype)stack
{
    return [[self alloc] init];
}

- (instancetype)init
{
    if (self = [super init])
    {
        //栈顶指针初始化成空
        self.topPointer = nil;
        //初始化数组
        self.stackArray = [NSMutableArray new];
    }
    
    return self;
}

- (void)push:(id)element
{
    [self.stackArray insertObject:element atIndex:0];
    
    //栈顶指针
    self.topPointer = element;
}

- (id)pop
{
    id topElement = [self.stackArray firstObject];
    //删除栈顶
    [self.stackArray removeObjectAtIndex:0];
    //重置栈顶指针
    self.topPointer = [self.stackArray firstObject];
    //返回出栈的元素
    return topElement;
}

- (NSUInteger)stackCount
{
    return self.stackArray.count;
}

- (id)stackPointer
{
    return self.topPointer;
}

- (void)show
{
    NSLog(@"%@", self.stackArray);
}


@end



