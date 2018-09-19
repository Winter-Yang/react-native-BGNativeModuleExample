//
//  BGNativeModuleExample.m
//  BGNativeModuleExample
//
//  Created by qunarwd on 2018/9/19.
//  Copyright © 2018年 qunarwd. All rights reserved.
//

#import "BGNativeModuleExample.h"

@implementation BGNativeModuleExample
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(testPrint:(NSString*)name info:(NSDictionary *)info){
    NSLog(@"----%s----",__func__);
    NSLog(@"----%@----%@",name, info);
}

RCT_EXPORT_METHOD(getCurrentClass:(RCTResponseSenderBlock)callBack){
    callBack(@[NSStringFromClass([self class])]);
}

@end
