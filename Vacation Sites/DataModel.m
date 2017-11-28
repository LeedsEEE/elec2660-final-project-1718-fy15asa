//
//  DataModel.m
//  Vacation Sites
//
//  Created by Abdul on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.adventure = [NSMutableArray array];
        Data *adventure = [[Data alloc]init];
        
        
        self.familyfun = [NSMutableArray array];
        Data *familyfun = [[Data alloc]init];
        
        
        
        
        self.adventure = [NSMutableArray array];
        Data *relaxation = [[Data alloc]init];
        
        
        
        
        self.adventure = [NSMutableArray array];
        Data *beaches = [[Data alloc]init];
        
        
    }
    return self;
}

@end
