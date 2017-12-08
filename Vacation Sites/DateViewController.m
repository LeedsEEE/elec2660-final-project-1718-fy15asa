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
    
    //Setting the textfield delegate to itself
    self.TextField.delegate = self;
    //Allowing the user to hide the keyboard when finished typing using donekey
    [self.TextField  setReturnKeyType:UIReturnKeyDone];
    
    //Initilaising and allocating the datepicker
    self.DatePicker = [[UIDatePicker alloc]init];
    //Setting the mode of the date picker to display both date and time
    self.DatePicker.datePickerMode = UIDatePickerModeDateAndTime;
    //Setting the timezone of the datepicker to be the default time zone (User's phone time)
    self.DatePicker.timeZone = [NSTimeZone defaultTimeZone];
    //Setting the inputview of the date picker when the users clicks on the specified textfield
    [self.DateTextField setInputView:self.DatePicker];
    
    //Initilaising a tool bar for the done button in the datepicker
    UIToolbar *toolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    //Setting the done button color to blue
    [toolbar setTintColor:[UIColor blueColor]];
    //initilaising the button and setting the trigger method to ShowSelectedDate so when the done is clicked it triggers ShowSelectedDate
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(ShowSelectedDate)];
    //Setting the toolbar item to the button
    [toolbar setItems:[NSArray arrayWithObjects:doneButton, nil]];
    //Adding the toolbar done button as a accessory view
    [self.DateTextField setInputAccessoryView:toolbar];
    
    
    //Creating a label confirimg the notification is set and hiding it
    self.NotificationIsSet.text = @"Your Notification Has Been Set";
    self.NotificationIsSet.hidden = YES;
    
    
    
}
//This will trigger 3 seconds after the user sets the notification
-(void) hideLabel{
    //hiding the message that your notification has been set after 5 seconds of setting it
    self.NotificationIsSet.hidden = YES;
    
}

//This method was taken from stack overflow
//hides the textfield when the user press done
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


//This method will trigger after done button in the datepicker is pressed by the user
-(void) ShowSelectedDate{
    //Initilaising and allocating a formatter to set the format of how the user will see the picked date
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    //Setting the format to display the date in days/months/years and display time in hour:minute am or pm
    [formatter setDateFormat:@"dd/MM/YYYY hh:mm a"];
    //Setting the text in the text field after the user chooses the date and presses done to whatever he/she picked
    self.DateTextField.text = [NSString stringWithFormat:@"%@",[formatter stringFromDate:self.DatePicker.date]];
    //Exit textfield
    [self.DateTextField resignFirstResponder];
    
    
    
    
}
//This method triggers when the viewcontroller is about to appear (when the user first clicks on the cell to view the viewcontroller).
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //Setting the textfield to the reminder title from our data which already has a string stored in it "Enter reminder"
    self.TextField.text = self.data.reminderTitle;
    
    
}

//This method triggers when the user leaves the viewcontroller
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    //Setting the reminder title in our data class to what ever the user wrote in the text field so it displays it back in the cell when the user views the table
    self.data.reminderTitle = self.TextField.text;
    
    //NSLog(@"%@",self.data.note); //debugging
    
}

//This Code Was Learned From http://www.spotlessicode.com/blog/posts/ios10-usernotification-framework-unnotification-tutorial-obj-c
- (IBAction)setNotification:(id)sender {
    
    //Initilaising and allocating our Notification
    _notification = [[UNMutableNotificationContent alloc]init];
    
    //Title of the notification is whatever the user typed in the textfield
    self.notification.title =[NSString stringWithFormat:(@"%@"),self.TextField.text];
    //sound defauly
    self.notification.sound = [UNNotificationSound defaultSound];
    
    //Identifying a date for the notificcation in this case whatever was picked by the user in the date piker
    NSDate *chosenDate = [self.DatePicker date];
    //Specifying the units of the date picker and saving it in an NSDatecomponents object
    NSDateComponents *triggerDate = [[NSCalendar currentCalendar] components:NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute fromDate:chosenDate];
    
    //The date and time to trigger the notification using the units and date from triggerDate and setting the repeats to no
    UNCalendarNotificationTrigger *trigger =[UNCalendarNotificationTrigger triggerWithDateMatchingComponents:triggerDate repeats:NO];
    //Adding a red badge to the application each time a notification is triggered
    self.notification.badge = @([[UIApplication sharedApplication] applicationIconBadgeNumber] + 1);
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:@"Time Down"
                                                                          content:self.notification trigger:trigger];
    //Schedueling the notification
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    [center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
        if (!error) {
            NSLog(@"Add NotificationRequest succeeded!");
        }
    }];
    //Showing the user that his notification has been set
    self.NotificationIsSet.hidden = NO;
    //Setting a timer to hide the message again after 3 seconds ( it will trigger method hidelabel after 5 seconds)
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(hideLabel) userInfo:nil repeats:NO];
   
    
     }
@end
