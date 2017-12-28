//
//  RayRadiusView.h
//  RayRadiusOperation
//
//  Created by lutianlei on 2017/12/28.
//  Copyright © 2017年 Ray. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RayRadiusView : UIView

@property (assign, nonatomic) CGFloat radius; // 半径
@property (assign, nonatomic) CGFloat angle;  // 角度

@property (strong, nonatomic) NSTimer *timer;
@property (assign, nonatomic) CGFloat time;  // 定时

- (void)starAnimation:(UIImageView *)imageView;

@end
