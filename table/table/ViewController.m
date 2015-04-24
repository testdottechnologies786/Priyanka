//
//  ViewController.m
//  table
//
//  Created by Dottechnologies on 3/27/15.
//  Copyright (c) 2015 Pankaj Yadav. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    selected=-1;
    
    arr=[[NSMutableArray alloc]init];
    [arr addObject:@"sbjcdsbcd"];
    [arr addObject:@"sbjcdsbcd"];
    [arr addObject:@"sbjcdsbcd"];
    [arr addObject:@"sbjcdsbcd"];
    [arr addObject:@"sbjcdsbcd"];
    
	// Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arr.count;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (selected==indexPath.row)
    {
        return 90;
    }
    return 44;
    
}
-(TableCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell)
    {
        NSArray *ar=[[NSBundle mainBundle]loadNibNamed:@"TableCell" owner:self options:nil];
        
        cell=[ar objectAtIndex:0];
        
    }
    
   
    
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    selected=indexPath.row;
    [tableView reloadData];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
