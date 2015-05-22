//
//  ListViewCell.m
//  Technology
//
//  Created by lanou3g on 15/5/20.
//  Copyright (c) 2015年 fengjie. All rights reserved.
//

#import "ListViewCell.h"

@implementation ListViewCell

- (void)awakeFromNib {
    // Initialization code
    }

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    UIImage *img =[UIImage imageNamed:@"1"];
    UIImageView *imgView =[[UIImageView alloc]initWithFrame:CGRectMake(10, 5, 60, 60)];
    imgView.image=img;
    [self addSubview:imgView];
    
    UILabel *titleLabel =[[UILabel alloc]initWithFrame:CGRectMake(75, 10, self.frame.size.width*2/3, 20)];
    titleLabel.backgroundColor=[UIColor greenColor];
    [self addSubview:titleLabel];
    
    UILabel *label =[[UILabel alloc]initWithFrame:CGRectMake(75, 35, self.frame.size.width-85, self.frame.size.height-40)];
    label.backgroundColor=[UIColor redColor];
    [self addSubview:label];
 


    // Configure the view for the selected state
}

@end
