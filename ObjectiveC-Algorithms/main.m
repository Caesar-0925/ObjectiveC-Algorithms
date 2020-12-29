//
//  main.m
//  ObjectiveC-Algorithms
//
//  Created by Kai Zhang on 2020/12/25.
//

#import <Foundation/Foundation.h>
#import "LongestPalindrome.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"%@", [LongestPalindrome.new longestPalindrome:@"abababaff"]);
    }
    return 0;
}
