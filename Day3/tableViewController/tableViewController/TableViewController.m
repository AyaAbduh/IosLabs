//
//  TableViewController.m
//  tableViewController
//
//  Created by JETS Mobile Lab-10 on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()


@end

@implementation TableViewController

NSMutableArray *males;
NSMutableArray *females;

- (void)viewDidLoad {
    [super viewDidLoad];
    males=[NSMutableArray new];
    females=[NSMutableArray new];
    [males addObject:@"Ahmed"];
    [males addObject:@"ali"];
    [males addObject:@"Mohamed"];
    [females addObject:@"aliaa"];
    [females addObject:@"Aya"];
    [females addObject:@"yasmin"];
 
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    NSInteger NumOfRows;
    switch(section){
        case 0:
            NumOfRows=[females count];
            break;
        case 1:
            NumOfRows=[males count];
            break;
        default:
            NumOfRows=0;
    }
    
    return NumOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    //cell.textLabel.text=@"Hello";
   // cell.detailTextLabel.text=@"detailed";
    switch(indexPath.section){
        case 0:
            cell.textLabel.text=[females objectAtIndex:indexPath.row];
            break;
        case 1:
            cell.textLabel.text=[males objectAtIndex:indexPath.row ];
            break;
        default:
            break;
            
    }
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *sectionTitle;
    switch (section) {
        case 0:
            sectionTitle=@"Females";
            break;
        default:
            sectionTitle=@"males";
            break;
    }
    return sectionTitle;
}
//the selected section
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:
            printf("females:%s\n",[[females objectAtIndex:indexPath.row] UTF8String]);
            break;
        case 1:
             printf("Males:%s\n",[[males objectAtIndex:indexPath.row] UTF8String]);
            break;
        default:
            break;
    }
}
//for putting specific height for each row
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
       
        switch (indexPath.section) {
            case 0:
                [females removeObjectAtIndex:indexPath.row];
                break;
            case 1:
                [males removeObjectAtIndex:indexPath.row];
                break;
            default:
                break;
        }
         [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
       
    }
}


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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
