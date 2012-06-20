//
//  DataBaseUtils.m
//  SharePreference
//
//  Created by liudi on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DataBaseUtils.h"

@implementation DataBaseUtils

+(BOOL)isNil:(id)obj{
    
    return obj==nil?YES:NO;
}

+(void)makeSql:(NSMutableString *)sql 
         atKey:(NSString *)key
        byType:(int)type 
    fromObject:(id)obj{

    switch (type) {
        case INT:
            [sql appendFormat:@" %@=%d",key,[obj intValue]];
            break;
        case STRING:
            [sql appendFormat:@" %@='%@'",key,obj];
            break;
        case DOUBLE:
            [sql appendFormat:@" %@=%g",key,[obj doubleValue]];
            break;
        default:
            break;
    }
}

@end
