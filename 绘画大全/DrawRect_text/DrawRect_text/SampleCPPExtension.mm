//
//  SampleCPPExtension.mm
//  Bilingual
//
//  Created by Zenny Chen on 09-6-22.
//  Copyright 2009 GreenGames Studio. All rights reserved.
//

#import "SampleCPPExtension.h"
#include <iostream>
using namespace std;

template <NSInteger N>
void AccumulateValue(Sample *sample);


@implementation Sample(SampleCPPExtension)

- (NSInteger)getValue
{
    return self.value;
}

- (void)accumulateValue
{
    AccumulateValue<sizeof(self.value)>(self);
}

@end

template <NSInteger N>
void AccumulateValue(Sample *sample)
{
    [sample increaseValue:[sample getValue]];
    
    AccumulateValue<N - 1>(sample);
}

template <>
void AccumulateValue<0>(Sample *sample)
{
    
}


void SayHello(void)
{
    //int a[] = { [0] = 10, [2] = -1 };  在objective-C++中不支持C99标准
    
    cout << "Hello, world!" << endl;
}

NSInteger backHe(int i,int b)
{
     return i + b;
    
}
