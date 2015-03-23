//
//  CityDetailViewController.m
//  Week2Assessment
//
//  Created by Michael Sevy on 3/20/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "CityDetailViewController.h"
#import "City.h"

@interface CityDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *cityTextField;
@property (weak, nonatomic) IBOutlet UITextField *stateTextField;
@property (weak, nonatomic) IBOutlet UIImageView *cityPic;
@property (weak, nonatomic) IBOutlet UILabel *onWikiLabelTapped;

@end

@implementation CityDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.cityTextField.text = self.city;
    self.stateTextField.text = self.state;
    self.cityPic.image = self.picture;

}

- (IBAction)tapGestureToWiki:(UITapGestureRecognizer *)sender {
    NSLog(@"going to wikipedia");
}
//wikipedia web link from a Label
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    if (touch.view.tag == 1) {
        [self goToURLString:@"http://www.wikipedia.com"];
            //NSLog(@"going to wiki");
    }
}

-(void)goToURLString:(NSString *)string {
    NSString *urlString = string;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
}

//- (IBAction)unwindFromResults:(UIStoryboardSegue *)sender
//{
//
//}
- (IBAction)onEditButtonTapped:(UIButton *)button {


    
}




@end
