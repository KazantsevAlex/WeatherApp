//
//  TableViewDataSource.h
//  WeatherApp
//
//  Created by Казанцев Алексей on 12/20/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "WeatherTableViewCell.h"
#import "WeatherStore.h"
#import "Weather.h"

@interface TableViewDataSource : NSObject <UITableViewDataSource, UITableViewDelegate>

- (instancetype)initWithTableView:(UITableView *)tableView withStore:(WeatherStore *) store;

@end
