//
//  ViewController.m
//  ForInDelay
//
//  Created by tkbg on 2019/1/22.
//  Copyright © 2019年 wistron.HRMS.DigitalHR. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableDictionary *dic = [NSMutableDictionary new];
    NSString *string = @"" ;
    NSMutableArray *dicAry = [NSMutableArray new];
    for (int i = 0; i < 25000; i ++) {
        string = [NSString stringWithFormat:@"%d",i];
        
        dic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
               string,@"abs_entry_src",
               string,@"all_days_ind",
               string,@"begin_day_hrs",
               string,@"bgn_dt",
               string,@"deptid",
               string,@"duration_abs",
               string,@"emplid",
               string,@"last_updt_dt",
               string,@"manager_appr_ind",
               string,@"name_display",
               string,@"orig_begin_dt",
               string,@"pin_take_num",
               string,@"start_time",
               string,@"start_time2",
               string,@"tree_level_num",
               string,@"voided_ind",
               nil];
        [dicAry addObject:dic];
    }
    
    
    NSString *key = @"";
    NSMutableArray *keyAry = [NSMutableArray new];
    for (int i = 15000; i < 30000; i++) {
        key = [NSString stringWithFormat:@"%d",i];
        [keyAry addObject:key];
    }
    [self excludeSameEmplid:dicAry KeyArray:keyAry];
}
-(void)excludeSameEmplid :(NSMutableArray *)dArray KeyArray :(NSMutableArray *)kArray{
    

    NSMutableArray *groupAry = [NSMutableArray new];
    
    for (NSString *key in kArray) {
        
        for (NSDictionary *elemt in dArray) {
            
            if ([key isEqualToString:[elemt objectForKey:@"emplid"]]) {
                
                [groupAry addObject:elemt];
                
                break;
            }
        }
    }
    NSLog(@"groupAry:%@",groupAry);
    NSLog(@"groupAry:%ld",groupAry.count);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
