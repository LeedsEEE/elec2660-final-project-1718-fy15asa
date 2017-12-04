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
    
    self.info = [[DataModel alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 7;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // NSInteger Numberofrows;
    //  Numberofrows = self.info.adventure.count;
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Beaches" forIndexPath:indexPath];
    
    
    if (indexPath.section==0){
        Data *tempadv = [self.info.Asibeaches objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
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


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


 #pragma mark - Navigation
 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 if ([[segue identifier] isEqualToString:@"Beach"]){
 
 BeachView *destinationViewController = [segue destinationViewController];
 NSIndexPath *indexpath = [self.tableView indexPathForSelectedRow];
 if(indexpath.section == 0){
 Data *tempadv = [self.info.Asibeaches objectAtIndex:indexpath.row];
 destinationViewController.data =tempadv;
 }
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

