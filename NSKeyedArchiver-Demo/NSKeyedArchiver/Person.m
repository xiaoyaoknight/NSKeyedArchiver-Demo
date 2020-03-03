//
//  Person.m
//  NSKeyedArchiver-Demo
//
//  Created by wangzelong on 2020/3/3.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "Person.h"

@implementation Person

//归档
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeInteger:self.age forKey:@"age"];
    [aCoder encodeBool:self.sex forKey:@"sex"];
}

//解档
-(instancetype)initWithCoder:(NSCoder *)aDecoder;{
    if (self = [super init]) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.age = [aDecoder decodeIntegerForKey:@"age"];
        self.sex = [aDecoder decodeBoolForKey:@"sex"];
    }
    return self;
}

@end
