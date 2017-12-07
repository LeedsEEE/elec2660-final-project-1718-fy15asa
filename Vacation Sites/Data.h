//
//  DataForTables.h
//  Vacation Sites
//
//  Created by Abdul on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject

//This is my Data class where a store all string objects that are going to be used to supply me with data or store data for me 
@property (nonatomic,strong) NSString *Name;
@property (nonatomic,strong) NSString *Description;
@property (nonatomic,strong) NSString *Location;
@property (nonatomic,strong) NSString *header;
@property (nonatomic,strong) NSString *content;
@property (nonatomic,strong) NSString *note;
@property (nonatomic,strong) NSString *reminderTitle;


@end
