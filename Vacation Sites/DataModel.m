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
        Data *sanjuan = [[Data alloc]init];
        sanjuan.Name = @"San Juan";
        sanjuan.Location =@"Puerto Rico, Caribbean, North America";
        sanjuan.Description = @"Aquatic thrills abound in Puerto Rico, from world-class surfint at Rincon where the swells reach 35 feet to relaxed scuba diving, particularly around Mona Island, Isla de Vieques. On terra firma, the tropical terrain yields prime hiking, horseback riding and rock climbing opportunities.";
        sanjuan.header = @"Caribbean";
        
        
        self.adventure = [NSMutableArray array];
        Data *Bahamas = [[Data alloc]init];
        Bahamas.Name = @"Out Islands";
        Bahamas.Location = @"Out Islands, Bahamas, Caribbean, North America";
        Bahamas.Description =@"The Out Islands are synonymous with sport, from the depths of the Gulf Stream that yield big game fish to the coral reefs just off shore that are catnip to scuba divers. Sailing, kayaking and beach-combing add action to lazy days in the sun, while resident pink flamingos and rare Bahama parrots color local hikes.";
        Bahamas.header = @"Caribbean";
        
        
        self.adventure = [NSMutableArray array];
        Data *VictoriaFalls = [[Data alloc]init];
        VictoriaFalls.Name = @"Victoria Falls";
        VictoriaFalls.Location = @"Matabeleland North Province, Zimbabwe, Africa";
        VictoriaFalls.Description = @"More than a mile wide and averaging 328 feet deep, Victoria Falls is one of the world's largest waterfalls and is the inspiration for numerous adrenaline-charged activities. Add to the visual rush with bungee jumping, whitewater rafting, helicopter fights, game drives or abseiling.";
        VictoriaFalls.header = @"Africa & the Middle East";
        
        self.adventure = [NSMutableArray array];
        Data *KrugerPark = [[Data alloc]init];
        KrugerPark.Name = @"Kruger National Park";
        KrugerPark.Location =@"South Africa, Africa";
        KrugerPark.Description =@"A game drive in search of the Big Five - lions, leopards, cape buffalo, elephants, and rhinos - is only the start in this South African safari mecca. Hit one of four adventure trails in a 4 X 4 for a self-guided tour through the park, take a ranger-led bush walk or soar in a hot-air balloon outside its boundaries.";
        KrugerPark.header = @"Africa & the Middle East";
        
        self.adventure = [NSMutableArray array];
        Data *Bali = [[Data alloc]init];
        Bali.Name = @"Bali";
        Bali.Location = @"Indonesia, Asia";
        Bali.Description = @"Take in the lush, volcanically active landscape of Bali while whitewater rafting on the Ayung and Unda rivers. Or get the heart pumping off-shore with an ocean-rafting sightseeing and snorkeling tour in boats that reach 44 miles per hour. Surfers hit the island's western side for big-time swells.";
        Bali.header = @"Asia";
        
        self.adventure = [NSMutableArray array];
        Data *Chengdu = [[Data alloc]init];
        Chengdu.Name= @"Chengdu";
        Chengdu.Location = @"Chengdu, Sichuan, China, Asia";
        Chengdu.Description = @"Perched in a high mountain valley, Huanglong or Yellow Dragon National Park offers invigorating adventure options. The ambitious can trek to Lhasa, whitewater raft or embark on multi-day river journeys. Alternatively, a five-mile trot brings you to five terraced, temple pools glowing with stunning hues.";
        Chengdu.header = @"Asia";
        
        self.adventure = [NSMutableArray array];
        Data *Alpes = [[Data alloc]init];
        Alpes.Name = @"Provence-Alpes-Cote d'Azur";
        Alpes.Location = @"France, Europe";
        Alpes.Description = @"Cycling through Provence's rolling hills and charming villages, along twisting country roads and past 2000-year-old Roman aqueducts is by turns exhilarating and relaxing. Elsewhere in the region, a slew of activities awaits, from cliff climbing to skydiving to horseback riding or alpine skiing.";
        Alpes.header = @"Europe";
        
        self.adventure = [NSMutableArray array];
        Data *ScotHigh = [[Data alloc]init];
        ScotHigh.Name = @"Scottish Highlands";
        ScotHigh.Location=@"Scotland, England, Europe";
        ScotHigh.Description = @"Hike or mountain bike past castles, lochs, Highland Cows and purple heather in the romantic Scottish Highlands. Experience the beauty of the country as you trot north on the West Highland Way from Glasgow to Fort William or explore the country's first national park, Loch Lomond and the Trossachs.";
        
        
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
