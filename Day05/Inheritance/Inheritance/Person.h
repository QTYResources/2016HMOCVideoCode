//
//  Person.h
//  Inheritance
//
//  Created by QinTuanye on 2019/1/13.
//  Copyright © 2019年 QinTuanye. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    NSString *_name;
}

- (void)sayHi;

@end

NS_ASSUME_NONNULL_END