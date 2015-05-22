//
//  TouchScrollView.m
//  Technology
//
//  Created by lanou3g on 15/5/21.
//  Copyright (c) 2015年 fengjie. All rights reserved.
//

#import "TouchScrollView.h"
#import "ImageController.h"
#import "ListTableViewController.h"

@implementation TouchScrollView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[self nextResponder]touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    ImageController *img =[[ImageController alloc]init];
    ListTableViewController *list =[[ListTableViewController alloc]init];
    [list.navigationController pushViewController:img animated:YES];
    

}

@end
