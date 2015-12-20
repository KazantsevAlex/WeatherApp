//
//  ViewController.m
//  WeatherApp
//
//  Created by Казанцев Алексей on 12/20/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *doMagic;
@property (weak, nonatomic) IBOutlet UITextField *townTextField;
@property (strong, nonatomic) GetData *data;
@property (strong, nonatomic) WeatherStore *store;
@property (strong, nonatomic) TableViewDataSource *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.dataSource =[TableViewDataSource new];
    self.store = [WeatherStore new];
    self.data = [GetData new];
    [self configureTableView];
}

- (IBAction)doMagic:(id)sender {
//    [self.store clearSore];
    [self.data setTown:self.townTextField.text];
    [self.data getReporsSuccess:^(id objects) {
        
        Weather *weather = [[Weather alloc]initWithDictionary:objects];
        
        [self.store addObject:weather];

        NSLog(@"%@", weather.weatherTown);
        NSLog(@"%lu", weather.weatherHumidity);
        NSLog(@"%lu", weather.weatherTemperature);
        NSLog(@"%lu", weather.weatherWindSpeed);
        dispatch_sync(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
        
    }];
    [self configureTableView];

}


-(void)configureTableView{

    self.dataSource = [[TableViewDataSource alloc]initWithTableView:self.tableView withStore:self.store];
//    [self.tableView reloadData];
}



@end
