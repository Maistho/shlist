//
//  DetailViewController.h
//  ShoppingList
//
//  Created by Gustav Bylund on 28/07/14.
//  Copyright (c) 2014 Instutitionen för datavetenskap, Linköpings Universitet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
