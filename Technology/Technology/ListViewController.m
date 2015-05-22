//
//  ListViewController.m
//  Technology
//
//  Created by lanou3g on 15/5/20.
//  Copyright (c) 2015年 fengjie. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     UIBarButtonItem *item =[[UIBarButtonItem alloc]initWithTitle:@"点我" style:UIBarButtonItemStylePlain target:self action:@selector(item)];
    self.navigationItem.rightBarButtonItem=item;
    //
    UIScrollView *scroll =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    scroll.backgroundColor=[UIColor grayColor];
    scroll.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+100);
    [self.view addSubview:scroll];
    
    //标题
    UILabel *titleLabel =[[UILabel alloc]initWithFrame:CGRectMake(10, 10, self.view.frame.size.width-70, 30)];
    titleLabel.backgroundColor=[UIColor cyanColor];
    [scroll addSubview:titleLabel];
    
    //小标题
    UILabel *headLabel =[[UILabel alloc]initWithFrame:CGRectMake(10, 45, self.view.frame.size.width/4, 20)];
    headLabel.backgroundColor=[UIColor redColor];
    [scroll addSubview:headLabel];
    
    //时间
    UILabel *addLabel =[[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/4+20, 45, self.view.frame.size.width/4, 20)];
    addLabel.backgroundColor=[UIColor yellowColor];
    [scroll addSubview:addLabel];
   
    //内容
    UILabel *contentLabel =[[UILabel alloc]initWithFrame:CGRectMake(10, 70, self.view.frame.size.width-20, self.view.frame.size.height)];
    contentLabel.backgroundColor=[UIColor greenColor];
    [scroll addSubview:contentLabel];

    // Do any additional setup after loading the view.
}
- (void)item
{
    NSLog(@"点我");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
