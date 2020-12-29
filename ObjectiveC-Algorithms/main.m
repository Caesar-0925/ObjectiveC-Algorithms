//
//  main.m
//  ObjectiveC-Algorithms
//
//  Created by Kai Zhang on 2020/12/25.
//

#import <Foundation/Foundation.h>
#import "LongestPalindrome.h"
#import "MinPatches.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@", [LongestPalindrome.new longestPalindrome:@"abababaff"]);
        NSLog(@"%lu", (unsigned long)[MinPatches.new minPatches:@[@1,@5,@10] inRange:20]);
    }
    return 0;
}
