//
//  WebViewController.m
//  Week2Assessment
//
//  Created by Michael Sevy on 3/20/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "WebViewController.h"
#import "City.h"
#import "CityDetailViewController.h"

@interface WebViewController ()
<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self goToURLString:@"http://en.wikipedia.org/wiki/Detroit"];

    self.webView.delegate = self;

}
-(void)goToURLString:(NSString *)string {
    NSString *urlString = string;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}




@end
