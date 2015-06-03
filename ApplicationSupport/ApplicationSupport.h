//
//  ApplicationSupport.h
//  ApplicationSupport
//
//  Created by Knut Inge Grosland on 2015-06-03.
//  Copyright (c) 2015 Cocmoc. All rights reserved.
//

#import <AppKit/AppKit.h>

@class ApplicationSupport;

static ApplicationSupport *sharedPlugin;

@interface ApplicationSupport : NSObject

+ (instancetype)sharedPlugin;
- (id)initWithBundle:(NSBundle *)plugin;

@property (nonatomic, strong, readonly) NSBundle* bundle;
@end