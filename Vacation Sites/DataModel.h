//
//  DataModel.h
//  Vacation Sites
//
//  Created by Abdul on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Data.h"

@interface DataModel : NSObject


//Objects for adventure table each object presenting a different header in the tableview
@property (nonatomic,strong) NSMutableArray *Asiaadventure;
@property (nonatomic,strong) NSMutableArray *Caradventure;
@property (nonatomic,strong) NSMutableArray *USadventure;
@property (nonatomic,strong) NSMutableArray *euroadventure;
@property (nonatomic,strong) NSMutableArray *mexadventure;
@property (nonatomic,strong) NSMutableArray *spadventure;
@property (nonatomic,strong) NSMutableArray *afradventure;


//Objects for FamilyFun table each object presenting a different header in the tableview
@property (nonatomic,strong) NSMutableArray *Carfamilyfun;
@property (nonatomic,strong) NSMutableArray *USfamilyfun;
@property (nonatomic,strong) NSMutableArray *eurofamilyfun;
@property (nonatomic,strong) NSMutableArray *mexfamilyfun;

//Objects for Relaxation&Rejuvenation table each object presenting a different header in the tableview
@property (nonatomic,strong) NSMutableArray *Asirelaxation;
@property (nonatomic,strong) NSMutableArray *Carrelaxation;
@property (nonatomic,strong) NSMutableArray *USrelaxation;
@property (nonatomic,strong) NSMutableArray *eurorelaxation;
@property (nonatomic,strong) NSMutableArray *mexrelaxation;
@property (nonatomic,strong) NSMutableArray *sprelaxation;
@property (nonatomic,strong) NSMutableArray *afrrelaxation;


//Objects for beaches&sun table each object presenting a different header in the tableview
@property (nonatomic,strong) NSMutableArray *Asibeaches;
@property (nonatomic,strong) NSMutableArray *Carbeaches;
@property (nonatomic,strong) NSMutableArray *USbeaches;
@property (nonatomic,strong) NSMutableArray *eurobeaches;
@property (nonatomic,strong) NSMutableArray *mexbeaches;
@property (nonatomic,strong) NSMutableArray *spbeaches;
@property (nonatomic,strong) NSMutableArray *afrbeaches;


@end
