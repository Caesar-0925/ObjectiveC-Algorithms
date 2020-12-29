//
//  LongestPalindrome.m
//  ObjectiveC-Algorithms
//
//  Created by Kai Zhang on 2020/12/28.
//

#import "LongestPalindrome.h"

@implementation LongestPalindrome
- (NSString *)longestPalindrome:(NSString *)s {
    NSUInteger len = s.length;
    NSMutableArray *dp = [NSMutableArray array];
    for (int m = 0; m < len; m++) {
        NSMutableArray *temp = [NSMutableArray array];
        for (int n = 0; n < len; n++) {
            [temp addObject:@0];
        }
        [dp addObject:temp];
    }
    NSString *ans = @"";
    for (int l = 0; l < len; l++) {
        for (int i = 0; i + l < len; i++) {
            int j = i + l;
            if (l == 0) {
                dp[i][j] = @1;
            } else if (l == 1) {
                dp[i][j] = [s characterAtIndex:i] == [s characterAtIndex:j] ? @1 : @0;
            } else {
                dp[i][j] = ([s characterAtIndex:i] == [s characterAtIndex:j]) && [dp[i + 1][j - 1] isEqualTo:@1] ? @1 : @0;
            }
            if ([dp[i][j] isEqualTo:@1] && l + 1 > ans.length) {
                ans = [s substringWithRange:NSMakeRange(i, l + 1)];
            }
        }
    }
    return  ans;
}
@end
