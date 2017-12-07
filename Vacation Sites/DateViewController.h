//
//  DateViewController.h
//  Vacation Sites
//
//  Created by Abdul on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"
@interface DateViewController : UIViewController <UITextFieldDelegate>
@property (nonatomic,strong) Data *data;
@property (strong, nonatomic)  UIDatePicker *DatePicker;
@property (strong, nonatomic) IBOutlet UITextField *TextField;

@property (strong, nonatomic) IBOutlet UITextField *DateTextField;

@end
