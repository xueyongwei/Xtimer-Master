//
//  XTimer.h
//  XTimer
//
//  Created by 薛永伟 on 16/1/22.
//  Copyright © 2016年 薛永伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XTimer : NSObject

@property  NSTimeInterval ti;
@property (nullable,weak) id atarget;
@property (nullable,nonatomic, assign) SEL aSelector;
@property (nullable, retain) id userInfo;


+ (nullable XTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(nullable id)aTarget selector:(nullable SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo;



- (void)reStart;
- (void)stop;
- (void)invalidate;
@end
