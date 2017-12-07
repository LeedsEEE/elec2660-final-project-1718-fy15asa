//
//  DateViewController.m
//  Vacation Sites
//
//  Created by Abdul on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DateViewController.h"

@interface DateViewController ()

@end

@implementation DateViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.TextField.delegate = self;
    [self.TextField  setReturnKeyType:UIReturnKeyDone];
    
    self.DatePicker = [[UIDatePicker alloc]init];
    self.DatePicker.datePickerMode = UIDatePickerModeDateAndTime;
    self.DatePicker.timeZone = [NSTimeZone defaultTimeZone];
    [self.DateTextField setInputView:self.DatePicker];
    
    UIToolbar *toolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    [toolbar setTintColor:[UIColor blueColor]];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(ShowSelectedDate)];

    [toolbar setItems:[NSArray arrayWithObjects:doneButton, nil]];
    [self.DateTextField setInputAccessoryView:toolbar];
    
    

    
    
    
}

//This method was taken from stack oveflow to return after keydone is pressed
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}



-(void) ShowSelectedDate{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"dd/MM/YYYY hh:mm a"];
    self.DateTextField.text = [NSString stringWithFormat:@"%@",[formatter stringFromDate:self.DatePicker.date]];
    [self.DateTextField resignFirstResponder];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.TextField.text = self.data.reminderTitle;
    
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.data.reminderTitle = self.TextField.text;
    
    //NSLog(@"%@",self.data.note);
    
}


- (IBAction)setNotification:(id)sender {
    _notification = [[UNMutableNotificationContent alloc]init];
    //self.notification.body = [NSString stringWithFormat:(@"%@"),self.TextField.text];
    self.notification.title =[NSString stringWithFormat:(@"%@"),self.TextField.text]; //[NSString localizedUserNotificationStringForKey:@"Time Down!" arguments:nil];
    self.notification.sound = [UNNotificationSound defaultSound];
    
    NSDate *chosenDate = [self.DatePicker date];
    NSDateComponents *triggerDate = [[NSCalendar currentCalendar] components:NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute fromDate:chosenDate];
    UNCalendarNotificationTrigger *trigger =[UNCalendarNotificationTrigger triggerWithDateMatchingComponents:triggerDate repeats:NO];
    self.notification.badge = @([[UIApplication sharedApplication] applicationIconBadgeNumber] + 1);
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:@"Time Down"
                                                                          content:self.notification trigger:trigger];
    
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    [center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
        if (!error) {
            NSLog(@"Add NotificationRequest succeeded!");
        }
    }];
    
   
    
     }
@end
