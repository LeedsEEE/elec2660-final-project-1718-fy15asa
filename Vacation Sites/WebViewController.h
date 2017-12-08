//
//  WebViewController.h
//  Vacation Sites
//
//  Created by Abdul on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
@interface WebViewController : UIViewController <WKNavigationDelegate> //Adding WKNavigationDelegate to access its methods

//WKWebView outlet objects for both Booking.com and FlightsTicket.com
@property (strong, nonatomic) IBOutlet WKWebView *Booking;
@property (strong, nonatomic) IBOutlet WKWebView *FlightTickets;

//Activity indicators outlet to let the user know when the website is loading
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *BookingIndicator;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *FlightsIndicator;

@end
