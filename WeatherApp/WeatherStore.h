//
//  WeatherStore.h
//  WeatherApp
//
//  Created by Казанцев Алексей on 12/20/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weather.h"

@interface WeatherStore : NSObject

- (instancetype)init;
- (void) addObject:(Weather *)object;
- (void) deleteObjectAtIndex:(NSUInteger)index;
- (NSUInteger) objectsCount;
-(Weather *)showObjectAtindex:(NSUInteger)index;

@end
