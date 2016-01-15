//
//  ViewController.m
//  testSheet
//
//  Created by shancheli on 16/1/15.
//  Copyright © 2016年 shancheli. All rights reserved.
//

#import "ViewController.h"
#import "FDActionSheet.h"

@interface ViewController ()<FDActionSheetDelegate>

@property(nonatomic,strong)NSMutableArray* contentList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _contentList = [[NSMutableArray alloc]init];
    
    for (int i = 0; i < 40; i++) {
        
        NSString* str = [NSString stringWithFormat:@"%d",i];
        [_contentList addObject:str];
    }
    
    
    UIButton* btn = [[UIButton alloc]init];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(btnDidClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

-(void)btnDidClick
{
    FDActionSheet* sheet = [[FDActionSheet alloc]initWithTitle:@"电话" delegate:self cancelButtonTitle:@"关闭" otherButtonTitles:_contentList];
    sheet.delegate = self;
    [sheet show];
}

@end
