//
//  CityDetailViewController.m
//  Week2Assessment
//
//  Created by Michael Sevy on 3/20/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "CityDetailViewController.h"

@interface CityDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *cityTextField;
@property (weak, nonatomic) IBOutlet UITextField *stateTextField;
@property (weak, nonatomic) IBOutlet UIImageView *cityPic;

@end

@implementation CityDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //self.cityTextField.text = self.city.city;
    //self.stateTextField.text = self.city.state;

}

- (IBAction)tapGestureToWiki:(UITapGestureRecognizer *)sender {


    [self goToURLString:@"http://www.wikipedia.com"];
    NSLog(@"going to wiki");


}
-(void)goToURLString:(NSString *)string {
    NSString *urlString = string;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

}
@end
