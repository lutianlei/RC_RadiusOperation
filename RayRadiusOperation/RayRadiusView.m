//
//  RayRadiusView.m
//  RayRadiusOperation
//
//  Created by lutianlei on 2017/12/28.
//  Copyright © 2017年 Ray. All rights reserved.
//

#import "RayRadiusView.h"

@implementation RayRadiusView
{
    
    UIImageView *_imageView;
}

- (instancetype)init{
    
    self = [super init];
    if (self) {
    
        self.frame = CGRectMake(0, 0, 20, 20);
        self.backgroundColor = [UIColor clearColor];
        
        _radius = 65;
        _angle = 0;
        _time = 0.03;
        UIImageView *moveImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        moveImg.image = [UIImage imageNamed:@"liaght.png"];
        [self addSubview:moveImg];
    }
    
    return self;
    
}

//实现原理根据改变 三角形的正弦定理 余弦定理
- (void)starAnimation:(UIImageView *)imageView{
    
    _imageView = imageView;
    self.center = CGPointMake(_radius * sinf(_angle) + _imageView.center.x, _radius * cosf(_angle + M_PI) + _imageView.center.y);
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:_time target:self selector:@selector(moveView) userInfo:nil repeats:YES];
}

- (void)moveView{
    
    self.angle += M_PI/60;
    self.center = CGPointMake(_radius * sinf(_angle) + _imageView.center.x, _radius * cosf(_angle + M_PI) + _imageView.center.y);
    
    
}

@end
