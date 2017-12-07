//
//  WebViewController.h
//  Vacation Sites
//
//  Created by Abdul on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
@interface WebViewController : UIViewController <WKNavigationDelegate>
@property (strong, nonatomic) IBOutlet WKWebView *Booking;
@property (strong, nonatomic) IBOutlet WKWebView *FlightTickets;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *BookingIndicator;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *FlightsIndicator;

@end
