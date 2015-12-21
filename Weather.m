//
//  Weather.m
//  WeatherApp
//
//  Created by Казанцев Алексей on 12/20/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import "Weather.h"

@interface Weather()

@property(nonatomic, strong)NSString *weatherTown;
@property(nonatomic, assign)NSUInteger weatherTemperature;
@property(nonatomic, assign)NSUInteger weatherHumidity;
@property(nonatomic, assign)NSUInteger weatherWindSpeed;
@property (nonatomic, strong)NSDictionary *dictionary;
@property (nonatomic, strong)NSDictionary *dictionaryWeather;
@property (nonatomic, strong)NSDictionary *dictionaryMain;
@property (nonatomic, strong)NSDictionary *dictionaryWind;

@end

@implementation Weather

- (instancetype)initWithDictionary:(id )object {
    
    NSParameterAssert(object);
    if (self = [super init]) {
        
        [self initValues:object];
     
        }
    
    return self;
}

-(void)initValues:(id )object {
    
    self.dictionary = [[NSDictionary alloc]initWithDictionary:object];
    self.dictionaryWeather = [self.dictionary valueForKey:@"weather"];
    self.dictionaryMain = [self.dictionary valueForKey:@"main"];
    self.dictionaryWind = [self.dictionary valueForKey:@"wind"];
    
    self.weatherTown = [self.dictionary valueForKey:@"name"];
    self.weatherTemperature = [[self.dictionaryMain valueForKey:@"temp"]unsignedIntegerValue];
    self.weatherHumidity = [[self.dictionaryMain valueForKey:@"humidity"]unsignedIntegerValue];
    self.weatherWindSpeed = [[self.dictionaryWind valueForKey:@"speed"]unsignedIntegerValue];
    
}

@end
