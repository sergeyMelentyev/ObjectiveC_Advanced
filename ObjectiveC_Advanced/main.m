//
//  main.m
//  ObjectiveC_Advanced
//
//  Created by Админ on 03.03.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Guid.h"

// BLOCK STRUCTURE PASSED AS ARGUMENT
void doSomethingWithTheBlock(void (^myBlock)(NSString *)) {
    myBlock(@"Block call");
}
void mutateFunc(void (^mutator)()) {
    mutator();
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // BLOCK DEFINITION
        void (^myBlock)(NSString *);
        myBlock = ^(NSString *x) {
            NSLog(@"%@", x);
        };
        doSomethingWithTheBlock(myBlock);
        
        // BLOCK DEFINITION INLINE
        void (^anotherBlock)(NSString *x) = ^(NSString *x) { NSLog(@"Inline %@",x); };
        doSomethingWithTheBlock(anotherBlock);
        
        // MUTATE A VALUE FROM OUTSIDE SCOPE USING BLOCKS
        __block NSString *result = @"First status";
        void (^mutator)() = ^ { result = @"A new one status"; };
        NSLog(@"%@", result);
        mutateFunc(mutator);
        NSLog(@"%@", result);
        
        // CATEGORY. EXTENSION TO ANY CLASS
        NSString *guid = [NSString stringWithUUID];
        NSLog(@"%@",guid);
        
        
        
        
    }
    return 0;
}







