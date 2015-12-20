//
//  GetData.h
//  WeatherApp
//
//  Created by Казанцев Алексей on 12/20/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GetData : NSObject

- (void)getReporsSuccess:(void(^)(id objects))successBlock;
- (void)setTown:(NSString *)townName;
- (instancetype)init;

@end
