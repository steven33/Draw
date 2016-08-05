//
//  sample.h
//  Bilingual
//
//  Created by Zenny Chen on 09-6-22.
//  Copyright 2009 GreenGames Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sample : NSObject {
    @private
    NSInteger value;
}

@property (nonatomic) NSInteger value;

- (id)initWithValue:(NSInteger)i;
- (NSString*)description;
- (void)increaseValue:(NSInteger)i;

@end
