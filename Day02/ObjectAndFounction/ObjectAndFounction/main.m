//
//  main.m
//  ObjectAndFounction
//
//  Created by QinTuanye on 2019/1/7.
//  Copyright © 2019年 QinTuanye. All rights reserved.
//

/*
 1. 对象和方法.
 
 对象作为方法的参数,对象作为方法的返回值.
 
 
 
 2. 类的本质是我们自定义的1个数据类型. 因为对象在内存中的大小是由我们决定的.
 多写几个属性 对象就大一些 少写几个属性 对象占用的空间就小一些.
 
 什么是数据类型: 是在内存中开辟空间的1个模板.
 
 
 3. 既然类是1个数据类型,那么类就可以作为方法的参数.
 
 - (void)test:(Dog *)dog;
 
 这个是完全没有问题的.
 
 
 
 -------语法注意-------------
 1. 当对象作为方法的参数的时候. 参数应该怎么写 参数类型是类指针,
 
 - (void)test:(Dog *)dog;
 
 
 2. 调用方法的时候 如果方法的参数是1个对象.
 
 那么给实参的时候,实参要求也必须是1个符合要求的对象. 否则就会出问题.
 
 
 3. 当对象作为方法的参数传递的时候,是地址传递.
 所以 在方法内部通过形参去修改形参指向的对象的时候 会影响实参变量指向的对象的值.
 
 
 
 
 --------------
 
 对象也可以作为方法的返回值.
 
 1.什么时候方法的返回值是1个对象呢?
 
 当方法执行完毕之后,如果有1个对象方法的内部不知道如何处理.并且这个对象是调用者翘首以盼的.
 那么这个时候我们就应该将这个对象返回.
 
 
 2.如果方法的返回值是1个对象,那么返回值类型应该写 类指针.
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    
    Dog *d1 = [Dog new];
    d1->_name = @"旺财";
    
    [p1 test:d1];
    
    NSLog(@"d1->_name = %@", d1->_name);
    
    Dog *d2 = [p1 test1];
    
    return 0;
}
