//
//  NSObject_Extension.m
//  ApplicationSupport
//
//  Created by Knut Inge Grosland on 2015-06-03.
//  Copyright (c) 2015 Cocmoc. All rights reserved.
//


#import "NSObject_Extension.h"
#import "ApplicationSupport.h"

@implementation NSObject (Xcode_Plugin_Template_Extension)

+ (void)pluginDidLoad:(NSBundle *)plugin
{
    static dispatch_once_t onceToken;
    NSString *currentApplicationName = [[NSBundle mainBundle] infoDictionary][@"CFBundleName"];
    if ([currentApplicationName isEqual:@"Xcode"]) {
        dispatch_once(&onceToken, ^{
            sharedPlugin = [[ApplicationSupport alloc] initWithBundle:plugin];
        });
    }
}
@end
