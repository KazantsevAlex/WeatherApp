//
//  WeatherTableViewCell.h
//  WeatherApp
//
//  Created by Казанцев Алексей on 12/20/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherTableViewCell : UITableViewCell

- (void)fillCellWith:(NSString *)town withTemperature: (NSUInteger)temperature withHumidity: (NSUInteger)humidity withWindSpeed: (NSUInteger)windSpeed;

@end
