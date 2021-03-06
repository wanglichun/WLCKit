//
//  WLCQueue.m
//  MyDemos
//
//  Created by lichunwang on 16/12/11.
//  Copyright © 2016年 springcome. All rights reserved.
//

#import "WLCQueue.h"

@interface WLCQueue ()

@property (strong, nonatomic) NSMutableArray *queue;

@end

@implementation WLCQueue

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.queue = [NSMutableArray new];
    }
    
    return self;
}

- (void)push:(id)anObject
{
    [self.queue addObject:anObject];
}

- (id)pop
{
    NSAssert(self.queue.count > 0, @"queue is emtpy");
    id object = [self.queue firstObject];
    [self.queue removeObject:object];
    
    return object;
}

- (id)front
{
    NSAssert(self.queue.count > 0, @"queue is emtpy");
    return self.queue.firstObject;
}

- (id)back
{
    NSAssert(self.queue.count > 0, @"queue is emtpy");
    return self.queue.lastObject;
}

- (NSUInteger)size
{
    return self.queue.count;
}

- (BOOL)empty
{
    return self.queue.count == 0;
}




@end
