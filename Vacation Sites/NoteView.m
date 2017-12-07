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
    // Do any additional setup after loading the view.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.data.note= [defaults objectForKey:@"note"];
    self.data.content = [defaults objectForKey:@"content"];
    self.Title.text = self.data.note;
    self.Note.text = self.data.content;
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
 self.Title.text = self.data.note;
 self.Note.text = self.data.content;
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.data.note = self.Title.text;
    self.data.content = self.Note.text;
    //NSLog(@"%@",self.data.note);
    
    
        
    }
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
/*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}*/


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
