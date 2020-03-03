//
//  Person.h
//  NSKeyedArchiver-Demo
//
//  Created by wangzelong on 2020/3/3.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject<NSCoding>

/**name*/
@property(nonatomic ,copy)NSString *name;
/**age*/
@property(nonatomic ,assign)NSInteger age;
/**sex*/
@property(nonatomic ,assign)BOOL sex;

@end

NS_ASSUME_NONNULL_END
