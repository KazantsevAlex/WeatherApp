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
    self.temperatureLabel.text = [NSString stringWithFormat:@"%lu",temperature];
    self.humidityLabel.text = [NSString stringWithFormat:@"%lu",humidity];
    self.windSpeedLabel.text = [NSString stringWithFormat:@"%lu",windSpeed];
 
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
