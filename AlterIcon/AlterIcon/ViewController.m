//
//  ViewController.m
//  AlterIcon
//
//  Created by 韩扬 on 2017/4/14.
//  Copyright © 2017年 HanYang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)changeIcon:(UIButton *)sender {
    if ([UIApplication sharedApplication].supportsAlternateIcons) {
        NSLog(@"you can change this app's icon");
    }else{
        NSLog(@"you can not change this app's icon");
        return;
    }
    
    NSString *iconName = [[UIApplication sharedApplication] alternateIconName];
    
    if (iconName) {
        // change to primary icon
        [[UIApplication sharedApplication] setAlternateIconName:nil completionHandler:^(NSError * _Nullable error) {
            if (error) {
                NSLog(@"set icon error: %@",error);
            }
            NSLog(@"The alternate icon's name is %@",iconName);
        }];
    }else{
        // change to alterante icon
        [[UIApplication sharedApplication] setAlternateIconName:@"pp60x60" completionHandler:^(NSError * _Nullable error) {
            if (error) {
                NSLog(@"set icon error: %@",error);
            }
            NSLog(@"The alternate icon's name is %@",iconName);
        }];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
