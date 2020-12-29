//
//  MinPatches.m
//  ObjectiveC-Algorithms
//
//  Created by Kai Zhang on 2020/12/29.
//

#import "MinPatches.h"

@implementation MinPatches
- (NSUInteger)minPatches:(NSArray *)nums inRange:(NSUInteger)n {
    NSUInteger patches = 0;
    NSUInteger x = 1;
    NSUInteger index = 0;
    NSUInteger len = nums.count;
    
    while (x <= n) {
        if (index < len && [[nums objectAtIndex:index] intValue] <= x) {
            x += [[nums objectAtIndex:index] intValue];
            index ++;
        } else {
            x *= 2;
            patches ++;
        }
    }
    
    return patches;
}
@end
