//
//  FamilyFun.m
//  Vacation Sites
//
//  Created by Abdul on 02/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FamilyFun.h"

@interface FamilyFun ()

@end

@implementation FamilyFun

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //initilaising and allocating the datamodel object
    self.info = [[DataModel alloc]init];
}

#pragma mark - Table view data source

//Number of sections method set to 4
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

//Number of rows in each section set to 2
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}


//We can access the cell with this method
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //Identifiying the cell that we're going to manipulate
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Family" forIndexPath:indexPath];
    
    //Enter if statement for cells in section 0
    if (indexPath.section==0){
        
        //Creating a temporary Data object to store the cells at index path information in for the first section
        Data *tempadv = [self.info.Carfamilyfun objectAtIndex:indexPath.row];
        
        //Settingg the textLabel, and detailTextLabel to our strings in the array to be displayed
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
        
    }
    
    //Same happening for different sections each section receiving their appropraite arrays and objects
    else if (indexPath.section==1){
        Data *tempadv = [self.info.eurofamilyfun objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    else if (indexPath.section==2){
        Data *tempadv = [self.info.mexfamilyfun objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    else if (indexPath.section==3){
        Data *tempadv = [self.info.USfamilyfun objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    
    return cell;
}

//header titles method returning appropriate header for each title
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if(section==0){
        
        return@"Caribbean";
    }
    else if (section==1) {
        return @"Europe";
    }
    else if(section==2){
        return @"Mexico, Central & South America";
    }
    else  {
        return @"United States & America";
    }
   
    
    
}


 #pragma mark - Navigation
 

// This method is responsible for pushing the data from our table to the view controller so we can display them there
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //segue is the connection between the cell and the next view controller with an identifier we can access it using this if statement
    if ([[segue identifier] isEqualToString:@"Family"]){
        
        //First we make an object of our view controler and specifiy that it is the destination of the segue
        FamilyView *destinationViewController = [segue destinationViewController];
        //we specifiy the NSIndexPath object and set its path to the tableview selected row
        NSIndexPath *indexpath = [self.tableView indexPathForSelectedRow];
        if(indexpath.section == 0){
            //Creating a temporary object to fetch the data from the table for section 0
            Data *tempadv = [self.info.Asiaadventure objectAtIndex:indexpath.row];
            //Setting the viewcontrollerr (data) to the ones in the table so we can access them there later
            destinationViewController.data =tempadv;
        }
            // the rest follows the same procedure with different sections
            else if (indexpath.section == 1){
                Data *tempadv = [self.info.eurofamilyfun objectAtIndex:indexpath.row];
                destinationViewController.data =tempadv;
            }
            else if (indexpath.section == 2){
                Data *tempadv = [self.info.mexfamilyfun objectAtIndex:indexpath.row];
                destinationViewController.data =tempadv;
            }
            else if (indexpath.section == 3){
                Data *tempadv = [self.info.USfamilyfun objectAtIndex:indexpath.row];
                destinationViewController.data =tempadv;
        }
    }
 }



@end

