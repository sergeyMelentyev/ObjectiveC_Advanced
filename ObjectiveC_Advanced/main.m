//
//  main.m
//  ObjectiveC_Advanced
//
//  Created by Админ on 03.03.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import <Foundation/Foundation.h>

// BLOCK STRUCTURE PASSED AS ARGUMENT
void doSomethingWithTheBlock(void (^myBlock)(NSString *)) {
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // BLOCK DEFINITION
        void (^myBlock)(NSString *);
        myBlock = ^(NSString *x) {
            NSLog(@"%@", x);
        };
        doSomethingWithTheBlock(myBlock);
        
        
        
        
        
    }
    return 0;
}
