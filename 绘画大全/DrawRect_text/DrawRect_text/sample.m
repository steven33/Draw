//
//  sample.m
//  Bilingual
//
//  Created by Zenny Chen on 09-6-22.
//  Copyright 2009 GreenGames Studio. All rights reserved.
//

#import "sample.h"


@implementation Sample

@synthesize value;

- (id)initWithValue:(NSInteger)i
{
    self.value = i;
    return self;
}

- (NSString*)description
{
    NSString *str = [NSString stringWithFormat:@"%d", self.value];
    return str;
}

- (void)increaseValue:(NSInteger)i
{
    self.value += i;
}


@end

