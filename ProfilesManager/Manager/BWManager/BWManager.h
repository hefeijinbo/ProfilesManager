//
//  BWManager.h
//  ProfilesManager
//
//  Created by Bowen Jin on 2022/3/10.
//  Copyright © 2022 Jakey. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class ProfilesNode;
NS_ASSUME_NONNULL_BEGIN

@interface BWManager : NSObject

+ (BWManager *)sharedManager;

@property (copy, nonatomic) NSString *currentSearchTeamName;

- (id)initWithRootNode:(ProfilesNode *)rootNode originInfo:(id)info key:(NSString*)key;

@end

NS_ASSUME_NONNULL_END
