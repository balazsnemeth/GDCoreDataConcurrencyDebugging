//
//  NSManagedObject+userInfo.m
//  HeyLets2
//
//  Created by Balazs Nemeth on 18/02/15.
//  Copyright (c) 2015 HeyLets. All rights reserved.
//

#import "NSManagedObject+userInfo.h"
#import <objc/runtime.h>

@implementation NSManagedObject (userInfo)

@dynamic userInfo;

- (void)setUserInfo:(NSMutableDictionary *)object {
    objc_setAssociatedObject(self, @selector(userInfo), object, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSMutableDictionary *)userInfo {
    id userInfo = objc_getAssociatedObject(self, @selector(userInfo));
    if (!userInfo) {
        userInfo = [NSMutableDictionary new];
        objc_setAssociatedObject(self, @selector(userInfo), userInfo, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return userInfo;
}

- (void) addUserInfo:(id) info forKey:(NSString *) key{
    [self.userInfo setObject:info forKey:key];
}

- (id) userInfoForKey:(NSString *) key{
    return [self.userInfo objectForKey:key];
}


@end
