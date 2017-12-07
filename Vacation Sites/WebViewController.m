//
//  WebViewController.m
//  Vacation Sites
//
//  Created by Abdul on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.Booking.navigationDelegate = self;
    NSString *BookingURL = @"https://booking.com";
    NSURL *BookingNSURL = [NSURL URLWithString:BookingURL];
    NSURLRequest *requestBooking = [NSURLRequest requestWithURL:BookingNSURL];
    [self.Booking loadRequest:requestBooking];
    
    
    
    self.FlightTickets.navigationDelegate = self;
    NSString *FlightsURL = @"https://skyscanner.net";
    NSURL *FlightsNSURL = [NSURL URLWithString:FlightsURL];
    NSURLRequest *requestFlight = [NSURLRequest requestWithURL:FlightsNSURL];
    [self.FlightTickets loadRequest:requestFlight];
}
-(void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
    [self.BookingIndicator startAnimating];
    [self.FlightsIndicator startAnimating];
}

-(void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    [self.BookingIndicator stopAnimating];
    [self.FlightsIndicator stopAnimating];
    self.BookingIndicator.hidden = YES;
    self.FlightsIndicator.hidden = YES;
    
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
