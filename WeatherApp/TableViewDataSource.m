//
//  TableViewDataSource.m
//  WeatherApp
//
//  Created by Казанцев Алексей on 12/20/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import "TableViewDataSource.h"

@interface TableViewDataSource ()

@property (nonatomic, strong) WeatherStore *store;

@end

@implementation TableViewDataSource


- (instancetype)initWithTableView:(UITableView *)tableView withStore:(WeatherStore *) storeR {
    
    if (self = [super init]) {
        [self configure:tableView];
        self.store = storeR;
    }
    return self;
}

- (void)configure:(UITableView *)tableView
{
    tableView.dataSource  = self;
    tableView.delegate = self;
    
    [tableView registerNib:[UINib nibWithNibName:@"WeatherTableViewCell" bundle:nil]
    forCellReuseIdentifier:NSStringFromClass([WeatherTableViewCell class])];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    WeatherTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([WeatherTableViewCell class])];
    
    [cell fillCellWith:[self.store showObjectAtindex:indexPath.row].weatherTown
       withTemperature:[self.store showObjectAtindex:indexPath.row].weatherTemperature
          withHumidity:[self.store showObjectAtindex:indexPath.row].weatherHumidity
         withWindSpeed:[self.store showObjectAtindex:indexPath.row].weatherWindSpeed];
    
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.f;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.store objectsCount];
}



- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
//        [self.store removeObjectAtIndex:indexPath.row];
        //[tableView reloadData];
    }
    
}





@end
