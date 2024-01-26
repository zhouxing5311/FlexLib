//
//  UIView+Local.m
//  BossHi-RD
//
//  Created by 周兴 on 2022/8/4.
//  Copyright © 2022 xucg. All rights reserved.
//

#import "UIView+Local.h"
#import <objc/runtime.h>

@implementation UIView (Local)

- (NSString *)fhrName {
    return objc_getAssociatedObject(self, @selector(fhrName));
}

- (void)setFhrName:(NSString *)fhrName {
    objc_setAssociatedObject(self, @selector(fhrName), fhrName, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
