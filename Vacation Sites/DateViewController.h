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
@interface DateViewController : UIViewController <UITextFieldDelegate> //Adding textfield delegate to access its delegate methods

//Creating an object of the class Data to access the data stored in it
@property (nonatomic,strong) Data *data;

//Creating an object UNMutableNotificationContent to store the notification data in it
@property (nonatomic,strong) UNMutableNotificationContent *notification;

//Action method for the user to set the notification
- (IBAction)setNotification:(id)sender;

//Creating a datepicker object for the user to choose a date from it
@property (strong, nonatomic)  UIDatePicker *DatePicker;

//TextFields outlets
@property (weak, nonatomic) IBOutlet UITextField *TextField;
@property (weak, nonatomic) IBOutlet UITextField *DateTextField;

//Label outlet to show the user when notification is set
@property (strong, nonatomic) IBOutlet UILabel *NotificationIsSet;

@end
