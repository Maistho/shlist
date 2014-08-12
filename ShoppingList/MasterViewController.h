//
//  MasterViewController.h
//  ShoppingList
//
//  Created by Gustav Bylund on 28/07/14.
//  Copyright (c) 2014 Instutitionen för datavetenskap, Linköpings Universitet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCell.h"

#import <CoreData/CoreData.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;



@end
