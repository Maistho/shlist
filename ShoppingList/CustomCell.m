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
    
   // self.amount.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
   // [self.amount sizeToFit];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)clickbutton:(id)sender
{
    [self.checkbutton setImage:[UIImage imageNamed:(self.checked ? @"checkBox.png" : @"checkBoxMarked.png")] forState:UIControlStateNormal];
    self.checked = !self.checked;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
    //Show TextFields and hide Labels when editing
    self.ProductTextField.hidden = self.AmountTextField.hidden = !self.isEditing;
    self.ProductLabel.hidden = self.AmountLabel.hidden = self.isEditing;
    //Always end editing of textfields
    [self.ProductTextField endEditing:YES];
    [self.AmountTextField endEditing:YES];
}

- (void)reloadProduct
{
    _ProductLabel.text = _ProductTextField.text = [_product valueForKey:@"name"];
    _AmountLabel.text = _AmountTextField.text = [_product valueForKey:@"amount"];
}


- (IBAction)ProductTextFieldEditingDidEnd:(id)sender
{
    [_product setValue: _ProductTextField.text forKey:@"name"];
    _ProductLabel.text = [_product valueForKey:@"name"];
}

- (IBAction)AmountTextFieldEditingDidEnd:(id)sender
{
    [_product setValue: _AmountTextField.text forKey:@"amount"];
    _AmountLabel.text = [_product valueForKey:@"amount"];
}

@end
