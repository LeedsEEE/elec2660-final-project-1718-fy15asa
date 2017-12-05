//
//  WebView.m
//  Vacation Sites
//
//  Created by Abdul on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "WebView.h"

@interface WebView () <WKUIDelegate>

@end

@implementation WebView

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.Booking.UIDelegate = self;
    self.Booking = [[WKWebView alloc] initWithFrame:self.view.frame];
    self.Booking.frame = CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
    NSString *url = @"http://www.booking.com";
    NSURL *URL = [NSURL URLWithString:url];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:URL];
    [self.Booking loadRequest:requestURL];
    [self.view addSubview:self.Booking];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
