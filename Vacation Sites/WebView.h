//
//  WebView.h
//  Vacation Sites
//
//  Created by Abdul on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface WebView : UIViewController <WKUIDelegate>
@property (strong, nonatomic) IBOutlet WKWebView *Booking;

@end
