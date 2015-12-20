//
//  WeatherStore.m
//  WeatherApp
//
//  Created by Казанцев Алексей on 12/20/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import "WeatherStore.h"


@interface WeatherStore ()

@property (strong, nonatomic) NSMutableArray *store;

@end


@implementation WeatherStore

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.store = [NSMutableArray new];
    }
    return self;
}

- (void) addObject:(Weather *)object {
    [self.store addObject: object];
}

- (void) deleteObjectAtIndex:(NSUInteger)index {
    [self.store removeObjectAtIndex: index];
}

- (NSUInteger) objectsCount {
    return [self.store count];
}

- (Weather *)showObjectAtindex:(NSUInteger)index{
    return [self.store objectAtIndex:index];
}

@end
