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
    //Setting the navigation delegate of booking to itself
    self.Booking.navigationDelegate = self;
    //Creating a string to store the URL in it
    NSString *BookingURL = @"https://booking.com";
    //NSURL determines the location of the resource in this case our URL (booking.com)
    NSURL *BookingNSURL = [NSURL URLWithString:BookingURL];
    //Using NSURLRequest we send a load request to the URL
    NSURLRequest *requestBooking = [NSURLRequest requestWithURL:BookingNSURL];
    //setting the WKWebView to request booking.com
    [self.Booking loadRequest:requestBooking];
    
    
    //Doing everything again for the FlightTickets website
    self.FlightTickets.navigationDelegate = self;
    NSString *FlightsURL = @"https://skyscanner.net";
    NSURL *FlightsNSURL = [NSURL URLWithString:FlightsURL];
    NSURLRequest *requestFlight = [NSURLRequest requestWithURL:FlightsNSURL];
    [self.FlightTickets loadRequest:requestFlight];
}

//This method will trigger as soon as the user clicks on the button to view the WKWebView (from developers documentation).
-(void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
    //Starting to animate the indicators to show the user that the webview is loading
    [self.BookingIndicator startAnimating];
    [self.FlightsIndicator startAnimating];
}

//This method will trigger as soon as the WKWebView is complete loading
-(void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    //Stopping the animation and hiding both indicators
    
    [self.BookingIndicator stopAnimating];
    [self.FlightsIndicator stopAnimating];
    self.BookingIndicator.hidden = YES;
    self.FlightsIndicator.hidden = YES;
    
}
@end
