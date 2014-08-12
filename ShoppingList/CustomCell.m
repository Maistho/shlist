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
    AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [delegate managedObjectContext];
    _product = [NSEntityDescription insertNewObjectForEntityForName:@"ListItem" inManagedObjectContext:context];
    // Initialization code
//    AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
//    NSManagedObjectContext *context = [delegate managedObjectContext];
//    NSEntityDescription *entityDesc = [NSEntityDescription entityForName:@"Product" inManagedObjectContext:context];
//    NSFetchRequest *request = [[NSFetchRequest alloc] init];
//    [request setEntity:entityDesc];
//    NSPredicate *pred = [NSPredicate predicateWithFormat:@"(name = %@)", _l1.text];
//    [request setPredicate:pred];
//    NSManagedObject *matches = nil;
//    NSError *error;
//    
//    NSArray *objects = [context executeFetchRequest:request error:&error];
//    
//    if ([objects count] == 0) {
//        _status.text = @"no matches";
//    } else {
//        matches = objects[0];
//        _l1.text = [matches valueForKey:@"name"];
//        _l2.text = [matches valueForKey:@"price"];
//    }
    
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
