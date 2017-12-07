//
//  NoteView.m
//  Vacation Sites
//
//  Created by Abdul on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "NoteView.h"

@interface NoteView ()

@end

@implementation NoteView

- (void)viewDidLoad {
    [super viewDidLoad];
    //kkk
    /*NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.data.note= [defaults objectForKey:@"note"];
    self.data.content = [defaults objectForKey:@"content"];
    //self.Title.text = self.data.note;
    self.Note.text = self.data.content;*/
    
    

}

//This method will trigger when the view controller is about to appear so its useful for us to write whatever we want happening before the user enters the view controller
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
 //Setting the textfield in the view controller to the note string object which is already set to Notes from our table and the text view to content which is set to Enter your text here
 self.Title.text = self.data.note;
 self.Note.text = self.data.content;
    
}

//This method will trigger when the View Controller is about to dissappear (user presses back or closes app)
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    //Setting the note and content string objects in the array to whatever the user wrote in the textfield and the textview so we can store them for later
    self.data.note = self.Title.text;
    self.data.content = self.Note.text;
    NSLog(@"%@",self.data.note); //This line is for debugging purposes
    
    
        
    }
#pragma mark - Navigation



- (IBAction)Save:(id)sender {
    // Create strings and integer to store the text info
    self.data.note = [self.Title text];
    self.data.content  = [self.Note text];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.data.note forKey:@"note"];
    [defaults setObject:self.data.content forKey:@"content"];
    [defaults synchronize];
}
@end
