//
//  DateViewController.h
//  Vacation Sites
//
//  Created by Abdul on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import "Data.h"
@interface DateViewController : UIViewController <UITextFieldDelegate>
@property (nonatomic,strong) Data *data;
@property (nonatomic,strong) UNMutableNotificationContent *notification;

- (IBAction)setNotification:(id)sender;

@property (strong, nonatomic)  UIDatePicker *DatePicker;
@property (weak, nonatomic) IBOutlet UITextField *TextField;
@property (weak, nonatomic) IBOutlet UITextField *DateTextField;

@end
