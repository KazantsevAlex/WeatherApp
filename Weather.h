//
//  Weather.h
//  WeatherApp
//
//  Created by Казанцев Алексей on 12/20/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weather : NSObject

@property(nonatomic, strong, readonly)NSString *weatherTown;
@property(nonatomic, assign, readonly)NSUInteger weatherTemperature;
@property(nonatomic, assign, readonly)NSUInteger weatherHumidity;
@property(nonatomic, assign, readonly)NSUInteger weatherWindSpeed;
@property (nonatomic, strong, readonly)NSDictionary *dictionaryCoords;

- (instancetype)initWithDictionary:(id )object;
@end
