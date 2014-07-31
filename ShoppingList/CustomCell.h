//
//  CustomCell.h
//  ShoppingList
//
//  Created by Gustav Bylund on 29/07/14.
//  Copyright (c) 2014 Instutitionen för datavetenskap, Linköpings Universitet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *ProductLabel;
@property (weak, nonatomic) IBOutlet UIButton *checkbutton;
@property (weak, nonatomic) IBOutlet UILabel *amount;

@property BOOL checked;
@property NSString *productName;

@end
