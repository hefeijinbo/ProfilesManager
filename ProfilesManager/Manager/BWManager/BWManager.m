//
//  BWManager.m
//  ProfilesManager
//
//  Created by Bowen Jin on 2022/3/10.
//  Copyright © 2022 Jakey. All rights reserved.
//

#import "BWManager.h"
#import "ProfilesNode.h"

@interface BWManager ()

@property (nonatomic, strong) ProfilesNode *orignalNode;
@end


@implementation BWManager

static dispatch_once_t onceTokenForDateManager;
static BWManager *_dateManager = nil;
+ (BWManager *)sharedManager
{
    
    dispatch_once(&onceTokenForDateManager, ^{
        _dateManager = [[self alloc] init];
    });
    return _dateManager;
}

- (id)initWithRootNode:(ProfilesNode *)rootNode originInfo:(id)info key:(NSString*)key {
    ProfilesNode *node = [[ProfilesNode alloc] initWithRootNode:rootNode originInfo:info key:key];
    self.orignalNode = node;
    return node;
}

@end
