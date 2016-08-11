//
//  NSManagedObject+userInfo.h
//  HeyLets2
//
//  Created by Balazs Nemeth on 18/02/15.
//  Copyright (c) 2015 HeyLets. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NSManagedObject (userInfo)

@property (nonatomic, strong, readonly) NSMutableDictionary *userInfo;

- (void) addUserInfo:(id) info forKey:(NSString *) key;
- (id) userInfoForKey:(NSString *) key;



@end
