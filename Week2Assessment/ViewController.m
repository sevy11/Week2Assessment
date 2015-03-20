//
//  ViewController.m
//  Week2Assessment
//
//  Created by Michael Sevy on 3/20/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "ViewController.h"
#import "City.h"
#import "CityDetailViewController.h"

@interface ViewController ()
<
UITableViewDataSource,
UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *cityPic;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *cities;
//@property *const kCityCell = @"CityCell";

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    City *cityOne = [[City alloc] initWithCityName:@"Detroit" andWithStateName:@"Michigan" andWithCityPic:[UIImage imageNamed:@"DetroitRiverlaker"]];
    City *cityTwo = [[City alloc] initWithCityName:@"Chicago" andWithStateName:@"Illinois" andWithCityPic:[UIImage imageNamed:@"Chicago-At-Night-iphone-5-wallpaper-ilikewallpaper_com"]];
    City *cityThree = [[City alloc] initWithCityName:@"Miami" andWithStateName:@"Florida" andWithCityPic:[UIImage imageNamed:@"miami"]];
    City *cityFour = [[City alloc] initWithCityName:@"East Lansing" andWithStateName:@"Michigan" andWithCityPic:[UIImage imageNamed:@"City-of-East-Lansing"]];

    self.cities = [NSMutableArray arrayWithObjects:cityOne, cityTwo, cityThree, cityFour, nil];

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CityCell"];

    City *city = [self.cities objectAtIndex:indexPath.row];
    cell.textLabel.text = city.city;
    cell.detailTextLabel.text = city.state;
    //cell.imageView.image = city.picture;
    self.cityPic.image = city.picture;
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cities.count;
}

#pragma mark -- Delete rows
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath   {
    NSString *cityString = [self.cities objectAtIndex:indexPath.row];
    [self.cities removeObject:cityString];
    [self.tableView reloadData];
}
#pragma mark -- Segue Methods
//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)cell {
//
//    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
//    City *cityTest = [self.cities objectAtIndex:indexPath.row];
//    CityDetailViewController *vc = segue.destinationViewController;
//
//    //vc.city = cityTest.city;
//    //vc.title = cityTest.city;



@end
