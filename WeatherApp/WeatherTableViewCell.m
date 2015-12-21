//
//  WeatherTableViewCell.m
//  WeatherApp
//
//  Created by Казанцев Алексей on 12/20/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import "WeatherTableViewCell.h"

@interface WeatherTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *townNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;
@property (weak, nonatomic) IBOutlet UILabel *humidityLabel;
@property (weak, nonatomic) IBOutlet UILabel *windSpeedLabel;


@end



@implementation WeatherTableViewCell

- (void)awakeFromNib {


}

- (void)fillCellWith:(NSString *)town withTemperature: (NSUInteger)temperature withHumidity: (NSUInteger)humidity withWindSpeed: (NSUInteger)windSpeed {
    
    self.townNameLabel.text = town;
    self.temperatureLabel.text = [NSString stringWithFormat:@"Temperature: %lu degrees",temperature];
    self.humidityLabel.text = [NSString stringWithFormat:@"Humidity: %lu%%",humidity];
    self.windSpeedLabel.text = [NSString stringWithFormat:@"Wind speed: %lu m/s",windSpeed];
    
    self.windSpeedLabel.backgroundColor = [UIColor yellowColor];
    self.windSpeedLabel.layer.cornerRadius = 10;
    self.windSpeedLabel.clipsToBounds = YES;
    
    self.temperatureLabel.backgroundColor = [UIColor yellowColor];
    self.temperatureLabel.layer.cornerRadius = 10;
    self.temperatureLabel.clipsToBounds = YES;
    
    self.humidityLabel.backgroundColor = [UIColor yellowColor];
    self.humidityLabel.layer.cornerRadius = 10;
    self.humidityLabel.clipsToBounds = YES;
    
    self.townNameLabel.backgroundColor = [UIColor yellowColor];
    self.townNameLabel.layer.cornerRadius = 10;
    self.townNameLabel.clipsToBounds = YES;
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
