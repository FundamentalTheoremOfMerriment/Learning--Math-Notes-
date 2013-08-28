//
//  warrenViewController.m
//  Learning [Math Notes]
//
//  Created by Chong Xu Wei on 12/8/13.
//  Copyright (c) 2013 warren. All rights reserved.
//

#import "OverallViewController.h"
#import "Chapters.h"

@interface OverallViewController ()
//UITableView *tableview;

@end

@implementation OverallViewController {
    NSArray *chapter;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self)
    {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"Chapters";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [[self navigationItem] setBackBarButtonItem:backButton];
    
    // Create chapter array
    Chapters *chapter1 = [Chapters new];
    chapter1.name = @"Algebraic Fractions & Manipulation";
    chapter1.detail = @"[Sec 2]";
    
    Chapters *chapter2 = [Chapters new];
    chapter2.name = @"Solving Quadratic Equations";
    chapter2.detail = @"[Sec 2]";
    
    Chapters *chapter3 = [Chapters new];
    chapter3.name = @"Quadratic Graphs";
    chapter3.detail = @"[Sec 2]";
    
    Chapters *chapter4 = [Chapters new];
    chapter4.name = @"Simultaneous Equations";
    chapter4.detail = @"[Sec 2]";
    
    Chapters *chapter5 = [Chapters new];
    chapter5.name = @"Pythagoras' Theorem";
    chapter5.detail = @"[Sec 2]";
    
    Chapters *chapter6 = [Chapters new];
    chapter6.name = @"Similarity and Congruency";
    chapter6.detail = @"[Sec 2]";
    
    Chapters *chapter7 = [Chapters new];
    chapter7.name = @"Trigonometry";
    chapter7.detail = @"[Sec 2]";
    
    Chapters *chapter8 = [Chapters new];
    chapter8.name = @"Mensuration";
    chapter8.detail = @"[Sec 2]";
    
    Chapters *chapter9 = [Chapters new];
    chapter9.name = @"Significant Figures, Indices and Standard Form";
    chapter9.detail = @"[Sec 2]";
    
    Chapters *chapter10 = [Chapters new];
    chapter10.name = @"Sets";
    chapter10.detail = @"[Sec 2]";
    
    chapter = [NSArray arrayWithObjects:chapter1, chapter2, chapter3, chapter4, chapter5, chapter6, chapter7, chapter8, chapter9, chapter10, nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return chapter.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell5";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Display chapter in the table cell
    Chapters *chapterCell = [chapter objectAtIndex:indexPath.row];
    UILabel *chapterNameLabel = (UILabel *)[cell viewWithTag:102];
    chapterNameLabel.text = chapterCell.name;
    UILabel *chapterNameLevel = (UILabel *)[cell viewWithTag:103];
    chapterNameLevel.text = chapterCell.detail;
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"Test2"])
    {
        NSIndexPath *sIndex = [self.tableView indexPathForSelectedRow];
        Chapters *c = [chapter objectAtIndex:sIndex.row];
        NSString *chapterName = c.name;
        
        OverallChapterViewController *s5 = [segue destinationViewController];
        //pass a variable in to s2 here. Example s2.name = @"blah";
        s5.myname = chapterName;//@"hello";
        //NSLog(@"prepare For Segue");
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cellLoc = [self.tableView cellForRowAtIndexPath:indexPath];
    if ([cellLoc.reuseIdentifier isEqualToString:@"Cell5"]) {
        // Perform the segue using the identifier I was careful to give it in IB
        // Note I'm sending the cell as the sender because that's what the normal
        // segue does and I already had code counting on that
        //S2ChapterViewController *sc =
        
        [self performSegueWithIdentifier:@"Test2" sender:cellLoc];
    }
    
    /*else if (
    {
    }*/
    
    else
    {
        UIAlertView *messageAlert = [[UIAlertView alloc]
                                     initWithTitle:@"Row Selected" message:cellLoc.reuseIdentifier delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        // Display Alert Message
        [messageAlert show];
    }
    
    //UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    //[self performSegueWithIdentifier:@"Test" sender:self];
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end