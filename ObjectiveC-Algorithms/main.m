//
//  main.m
//  ObjectiveC-Algorithms
//
//  Created by Kai Zhang on 2020/12/25.
//

#import <Foundation/Foundation.h>
#import "FindContentChildren.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"%ld", (long)[FindContentChildren.new findContentChildren:@[@1, @1, @2] withSizes:@[@1, @1]]);
    }
    return 0;
}
