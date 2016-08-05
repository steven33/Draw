//
//  SampleCPPExtension.h
//  Bilingual
//
//  Created by Zenny Chen on 09-6-22.
//  Copyright 2009 GreenGames Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sample.h"

#ifdef __cplusplus
extern "C" {
#endif

// Here, extend Sample class through Category
@interface Sample(SampleCPPExtension)

- (void)accumulateValue;

@end
    
extern void SayHello(void);
extern NSInteger backHe(int i,int b);
    
#ifdef __cplusplus
}
#endif
