//
//  CityDetailViewController.m
//  Week2Assessment
//
//  Created by Michael Sevy on 3/20/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "CityDetailViewController.h"
#import "City.h"
#import "WebViewController.h"
#import "ViewController.h"

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
    //self.onWikiLabelTapped.text = self.url;
}

- (IBAction)tapGestureToWiki:(UITapGestureRecognizer *)sender {
    NSLog(@"going to wikipedia");
}
//wikipedia web link from a Label
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    if (touch.view.tag == 1) {
        }
    }

//-(void)goToURLString:(NSString *)string {
//    NSString *urlString = string;
//    NSURL *url = [NSURL URLWithString:urlString];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//}

//- (IBAction)unwindFromResults:(UIStoryboardSegue *)sender
//{
//
//}
- (IBAction)onEditButtonTapped:(UIButton *)button {

}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//
//    //City *CityTest = [cities objectAtIndex.indexPath];
//    WebViewController *wvc = segue.destinationViewController;
//
//    wvc.url = CityTest.url;
//}
//



//Compiles without error 2.00 C 2.00 100.0%
//Runs without crashing 2.00 C 2.00 100.0%
//Shows list of cities 2.00 C 2.00 100.0%
//Ability to delete cities 2.00 C 2.00 100.0%
//Segues to details via Push Segue 2.00 C 0.00 0.00%------------------
                //City name editable 2.00 C 0.00 0.00%
//Presents webview ViewController modally 2.00 C 0.00 0.00%-------------
//Triggers segue via tap gesture on label 2.00 C 0.00 0.00%--------------
//Created custom class 2.00 C 0.00 0.00%-----------------
//Image shown in Detail VC 2.00 C 0.00 0.00%--------------------
//Image shown in TableView Cell 2.00 C 0.00 0.00%-----------------
                //Implemented custom delegation 2.00 C 0.00 0.00%
//Proper Constraints 2.00 C 2.00 100.0%
//Submitted by deadline 2.00 C 2.00 100.0%


@end
