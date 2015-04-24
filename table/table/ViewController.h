//
//  ViewController.h
//  table
//
//  Created by Dottechnologies on 3/27/15.
//  Copyright (c) 2015 Pankaj Yadav. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableCell.h"
@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *table;
    NSMutableArray *arr;
    NSInteger selected;
    TableCell *cell;
    
}
@end
