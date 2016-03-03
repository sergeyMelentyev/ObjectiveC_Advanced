//
//  NSString+Guid.m
//  ObjectiveC_Advanced
//
//  Created by Админ on 03.03.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import "NSString+Guid.h"

@implementation NSString (Guid)
+(NSString*)stringWithUUID{
    CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
    NSString *str = (__bridge_transfer NSString*)CFUUIDCreateString(kCFAllocatorDefault, uuid);
    CFRelease(uuid);
    return str;
}
+(NSString*)privateId{
    static unsigned long lastId = 0;
    NSString *ret = [NSString stringWithFormat:@"%ld", lastId++];
    return ret;
}

@end