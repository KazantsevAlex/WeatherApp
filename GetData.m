//
//  GetData.m
//  WeatherApp
//
//  Created by Казанцев Алексей on 12/20/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import "GetData.h"

@interface GetData()

@property(nonatomic, strong)NSString* townName;

@end

@implementation GetData

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.townName = @"Kiev";
    }
    return self;
}

- (void)getReporsSuccess:(void(^)(id objects))successBlock {
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/weather?q=%@&units=metric&mode=json&appid=2de143494c0b295cca9337e1e96b00e0",self.townName]];
    
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        id object = [NSJSONSerialization JSONObjectWithData:data
                                                    options:NSJSONReadingMutableContainers
                                                      error:nil];
        if (successBlock) {
            successBlock(object);
        }
    }];
    [task resume];
}

-(void)setTown:(NSString *)townName {
    self.townName = townName;
}

@end
