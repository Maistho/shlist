//
//  CustomCell.m
//  ShoppingList
//
//  Created by Gustav Bylund on 29/07/14.
//  Copyright (c) 2014 Instutitionen för datavetenskap, Linköpings Universitet. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
    self.amount.text = @"20l";
    
    
   // self.amount.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
   // [self.amount sizeToFit];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)clickbutton:(id)sender {
    [self.checkbutton setImage:[UIImage imageNamed:(self.checked ? @"checkBox.png" : @"checkBoxMarked.png")] forState:UIControlStateNormal];
    self.checked = !self.checked;
}

@end
