//
//  ListScrollViewCell.m
//  Technology
//
//  Created by lanou3g on 15/5/20.
//  Copyright (c) 2015年 fengjie. All rights reserved.
//

#import "ListScrollViewCell.h"
#import "TouchScrollView.h"
#import "ImageController.h"
#import "ListTableViewController.h"

@interface ListScrollViewCell ()

@property (nonatomic,retain)UIScrollView *scroview;

@end

@implementation ListScrollViewCell

- (void)awakeFromNib {
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
//    UIScrollView *scroview =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0,self.frame.size.width , 110)];
//    scroview.backgroundColor=[UIColor grayColor];
//    scroview.contentSize=CGSizeMake(self.superview.frame.size.width*4, self.frame.origin.y);
//    [self addSubview:scroview];
//    [scroview release];
//    scroview.showsHorizontalScrollIndicator=NO;
    
    TouchScrollView *scroview =[[TouchScrollView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, 110)];
    scroview.backgroundColor=[UIColor grayColor];
    scroview.contentSize=CGSizeMake(self.superview.frame.size.width*4, self.frame.origin.y);
        [self addSubview:scroview];
    
    UILabel *label =[[UILabel alloc]initWithFrame:CGRectMake(10, 115, self.frame.size.width*2/3, 20)];
    label.backgroundColor=[UIColor yellowColor];
    [self addSubview:label];
    
    UIPageControl *page =[[UIPageControl alloc]initWithFrame:CGRectMake(self.frame.size.width*2/3+30, 115, 50, 20)];
//    page.backgroundColor=[UIColor yellowColor];
    page.numberOfPages=scroview.contentSize.width/self.superview.frame.size.width;
    [self addSubview:page];
    

    // Configure the view for the selected state
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
   
    
}


@end
