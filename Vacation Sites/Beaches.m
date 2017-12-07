//
//  Beaches.m
//  Vacation Sites
//
//  Created by Abdul on 03/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "Beaches.h"

@interface Beaches ()

@end

@implementation Beaches

- (void)viewDidLoad {
    [super viewDidLoad];
    //Initilaising the allocating the array in this class
    self.info = [[DataModel alloc]init];
}



#pragma mark - Table view data source
//Number of sections method returning 7
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 7;
}

//Number of rows 2
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

//With this method we can access the cell and manipulate it
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //Identifying the cell we want to access and giving it a name cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Beaches" forIndexPath:indexPath];
    
    //Access cells in section 0
    if (indexPath.section==0){
        
        //creating an empty Data object to store the info from our table
        Data *tempadv = [self.info.Asibeaches objectAtIndex:indexPath.row];
        //Setting the textLabel and detailTextLabel to their appropriate string objects in the array
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    
    //Rest of statements are the same but each one accessing its appropriate array of objects
    else if (indexPath.section==1){
        Data *tempadv = [self.info.afrbeaches objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    else if (indexPath.section==2){
        Data *tempadv = [self.info.Carbeaches objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    else if (indexPath.section==3){
        Data *tempadv = [self.info.eurobeaches objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    else if (indexPath.section==4){
        Data *tempadv = [self.info.mexbeaches objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    else if (indexPath.section==5){
        Data *tempadv = [self.info.spbeaches objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    else if (indexPath.section==6){
        Data *tempadv = [self.info.USbeaches objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    return cell;
}

//This method is for setting the title of the header straight forward
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if(section==0){
        
        return@"Asia";
    }
    else if (section==1) {
        return @"Africa & the Middle East";
    }
    else if(section==2){
        return @"Caribbean";
    }
    else if (section==3) {
        return @"Europe";
    }
    else if(section==4){
        return @"Mexico, Central & South America";
    }
    else if (section==5) {
        return @"South Pacific";
    }
    else  {
        return @"United States and Canada";
    }
    
    
    
}


 #pragma mark - Navigation

 // This method is responsible for pushing the data from our table to the view controller so we can display them there
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     //Segue is the connection from the cell to the ViewController we identify it with its name (given identifier)
 if ([[segue identifier] isEqualToString:@"Beach"]){
 //Creating an object of our ViewController destination and also setting the destination of the segue to it
 BeachView *destinationViewController = [segue destinationViewController];
     //we specifiy the NSIndexPath object and set its path to the tableview selected row
 NSIndexPath *indexpath = [self.tableView indexPathForSelectedRow];
     //Enter if statment for cells in section 0
 if(indexpath.section == 0){
     //Creating a temporary Data object to store the cells at index path information in for the first section
 Data *tempadv = [self.info.Asibeaches objectAtIndex:indexpath.row];
     //Setting the viewcontrollerr (data) to the ones in the table so we can access them there later
 destinationViewController.data =tempadv;
 }
     
     
     //Rest follows the same pattern as the first one 
 else if (indexpath.section == 1){
 Data *tempadv = [self.info.afrbeaches objectAtIndex:indexpath.row];
 destinationViewController.data =tempadv;
 }
 else if (indexpath.section == 2){
 Data *tempadv = [self.info.Carbeaches objectAtIndex:indexpath.row];
 destinationViewController.data =tempadv;
 }
 else if (indexpath.section == 3){
 Data *tempadv = [self.info.eurobeaches objectAtIndex:indexpath.row];
 destinationViewController.data =tempadv;
 }
 else if (indexpath.section == 4){
 Data *tempadv = [self.info.mexbeaches objectAtIndex:indexpath.row];
 destinationViewController.data =tempadv;
 }
 else if (indexpath.section == 5){
 Data *tempadv = [self.info.spbeaches objectAtIndex:indexpath.row];
 destinationViewController.data =tempadv;
 }
 else if (indexpath.section == 6){
 Data *tempadv = [self.info.USbeaches objectAtIndex:indexpath.row];
 destinationViewController.data =tempadv;
 }
 
 }
 
 
 }



@end

