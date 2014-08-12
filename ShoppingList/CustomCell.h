//
//  CustomCell.h
//  ShoppingList
//
//  Created by Gustav Bylund on 29/07/14.
//  Copyright (c) 2014 Instutitionen för datavetenskap, Linköpings Universitet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AppDelegate.h"

@interface CustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *ProductLabel;
@property (weak, nonatomic) IBOutlet UITextField *ProductTextField;
@property (weak, nonatomic) IBOutlet UIButton *checkbutton;
@property (weak, nonatomic) IBOutlet UILabel *AmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *AmountTextField;

- (IBAction)ProductTextFieldEditingDidEnd:(id)sender;
- (IBAction)AmountTextFieldEditingDidEnd:(id)sender;

@property BOOL checked;
@property NSManagedObject *product;

@end
