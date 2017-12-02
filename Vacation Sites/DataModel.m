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
        
        self.Caradventure = [NSMutableArray array];
        Data *sanjuan = [[Data alloc]init];
        sanjuan.Name = @"San Juan";
        sanjuan.Location =@"Puerto Rico, Caribbean, North America";
        sanjuan.Description = @"Aquatic thrills abound in Puerto Rico, from world-class surfint at Rincon where the swells reach 35 feet to relaxed scuba diving, particularly around Mona Island, Isla de Vieques. On terra firma, the tropical terrain yields prime hiking, horseback riding and rock climbing opportunities.";
        sanjuan.header = @"Caribbean";
        
        
        self.Caradventure = [NSMutableArray array];
        Data *Bahamas = [[Data alloc]init];
        Bahamas.Name = @"Out Islands";
        Bahamas.Location = @"Out Islands, Bahamas, Caribbean, North America";
        Bahamas.Description =@"The Out Islands are synonymous with sport, from the depths of the Gulf Stream that yield big game fish to the coral reefs just off shore that are catnip to scuba divers. Sailing, kayaking and beach-combing add action to lazy days in the sun, while resident pink flamingos and rare Bahama parrots color local hikes.";
        Bahamas.header = @"Caribbean";
        
        
        self.afradventure = [NSMutableArray array];
        Data *VictoriaFalls = [[Data alloc]init];
        VictoriaFalls.Name = @"Victoria Falls";
        VictoriaFalls.Location = @"Matabeleland North Province, Zimbabwe, Africa";
        VictoriaFalls.Description = @"More than a mile wide and averaging 328 feet deep, Victoria Falls is one of the world's largest waterfalls and is the inspiration for numerous adrenaline-charged activities. Add to the visual rush with bungee jumping, whitewater rafting, helicopter fights, game drives or abseiling.";
        VictoriaFalls.header = @"Africa & the Middle East";
        
        self.afradventure = [NSMutableArray array];
        Data *KrugerPark = [[Data alloc]init];
        KrugerPark.Name = @"Kruger National Park";
        KrugerPark.Location =@"South Africa, Africa";
        KrugerPark.Description =@"A game drive in search of the Big Five - lions, leopards, cape buffalo, elephants, and rhinos - is only the start in this South African safari mecca. Hit one of four adventure trails in a 4 X 4 for a self-guided tour through the park, take a ranger-led bush walk or soar in a hot-air balloon outside its boundaries.";
        KrugerPark.header = @"Africa & the Middle East";
        
        self.Asiaadventure = [NSMutableArray array];
        Data *Bali = [[Data alloc]init];
        Bali.Name = @"Bali";
        Bali.Location = @"Indonesia, Asia";
        Bali.Description = @"Take in the lush, volcanically active landscape of Bali while whitewater rafting on the Ayung and Unda rivers. Or get the heart pumping off-shore with an ocean-rafting sightseeing and snorkeling tour in boats that reach 44 miles per hour. Surfers hit the island's western side for big-time swells.";
        Bali.header = @"Asia";
        
        self.Asiaadventure = [NSMutableArray array];
        Data *Chengdu = [[Data alloc]init];
        Chengdu.Name= @"Chengdu";
        Chengdu.Location = @"Chengdu, Sichuan, China, Asia";
        Chengdu.Description = @"Perched in a high mountain valley, Huanglong or Yellow Dragon National Park offers invigorating adventure options. The ambitious can trek to Lhasa, whitewater raft or embark on multi-day river journeys. Alternatively, a five-mile trot brings you to five terraced, temple pools glowing with stunning hues.";
        Chengdu.header = @"Asia";
        
        self.euroadventure = [NSMutableArray array];
        Data *Alpes = [[Data alloc]init];
        Alpes.Name = @"Provence-Alpes-Cote d'Azur";
        Alpes.Location = @"France, Europe";
        Alpes.Description = @"Cycling through Provence's rolling hills and charming villages, along twisting country roads and past 2000-year-old Roman aqueducts is by turns exhilarating and relaxing. Elsewhere in the region, a slew of activities awaits, from cliff climbing to skydiving to horseback riding or alpine skiing.";
        Alpes.header = @"Europe";
        
        self.euroadventure = [NSMutableArray array];
        Data *ScotHigh = [[Data alloc]init];
        ScotHigh.Name = @"Scottish Highlands";
        ScotHigh.Location=@"Scotland, England, Europe";
        ScotHigh.Description = @"Hike or mountain bike past castles, lochs, Highland Cows and purple heather in the romantic Scottish Highlands. Experience the beauty of the country as you trot north on the West Highland Way from Glasgow to Fort William or explore the country's first national park, Loch Lomond and the Trossachs.";
        ScotHigh.header = @"Europe";
        
        self.mexadventure = [NSMutableArray array];
        Data *Machu = [[Data alloc]init];
        Machu.Name = @"Machu Picchu";
        Machu.Location = @"Sacred Valley, Cusco Region, Peru, South America";
        Machu.Description = @"Hike the Inca Trail to the majestic Lost Cities of the Incas, hidden in dense Amazonian jungle, 7000 feet above sea level. This ancient road treks 25 miles from Cuzco through deep Andean gullies and is not for the faint-hearted. Climb up to overlook the ruins and the Urubamba Valley from Huayna Pichu Mountain.";
        Machu.header = @"Mexico, Central & South America";
        
        self.mexadventure = [NSMutableArray array];
        Data *Ambergris = [[Data alloc]init];
        Ambergris.Name= @"Ambergris Caye";
        Ambergris.Location = @"Belize Cayes, Belize, Central America";
        Ambergris.Description = @"Belize's largest island and an often overlooked Caribbean gem offers astounding diving and snorkeling. This English-speaking nation is home to one of the largest coral reef systems in the world. If you want to stay atop the waves, this Caribbean idyll provides fabulous fishing, sailing and kayaking.";
        Ambergris.header = @"Mexico, Central & South America";
        
        self.spadventure = [NSMutableArray array];
        Data *Rarotonga = [[Data alloc]init];
        Rarotonga.Name = @"Rarotonga";
        Rarotonga.Location = @"Southern Cook Islands, Cook Islands, South Pacific";
        Rarotonga.Description = @"On the Cooks' capital island, horseback treks, hiking and boat tours provide close-up views of the lush, mountainous terrain. In the surrounding Pacific waters, diving and snorkeling are the top draw: green turtles, reef sharks, moray eels and a cavalcade of tropical fish patrol the islands' coral reefs.";
        Rarotonga.header = @"South Pacific";
        
        
        self.spadventure = [NSMutableArray array];
        Data *BarrierReef = [[Data alloc]init];
        BarrierReef.Name = @"Great Barrier Reef";
        BarrierReef.Location = @"Queensland, Australia, South Pacific";
       BarrierReef.Description = @"With 1,400 miles of coral reef stretching along the Queensland coast and 1,500 fish species, the World Heritage List-designated Great Barrier Reef is a scuba lover's dream destination. Accompany underwater exploration with coastal adventures like bungee jumping or rafting through rain forests near Cairns";
        BarrierReef.header = @"South Pacific";
        
        
        self.USadventure = [NSMutableArray array];
        Data *Kailua = [[Data alloc]init];
        Kailua.Name = @"Kailua-Kona";
        Kailua.Location = @"Island of Hawaii, Hawaii, United States, North America";
        Kailua.Description = @"Located about two miles north of the airport, the Kona Coast State Park's trio of tranquil, uncrowded beaches cater to swimming, kayaking, picnicking and snorkeling. It's possible to spot Hawaiian green sea turtles among the arches and caves of the offshore coral reefs. Surfers congregate in the winter for the big surf.";
        Kailua.header = @"United States & Canada";
        
        
        self.USadventure = [NSMutableArray array];
        Data *GrandCanyon = [[Data alloc]init];
        GrandCanyon.Name = @"Grand Canyon National Park";
        GrandCanyon.Location = @"Arizona, United States, North America";
       GrandCanyon.Description=@"At this behemoth of a canyon, whitewater and calm water rafting trips plunge along 277 river miles, fixed-wing and helicopter tours soar above its mile-deep maw and hikes and mule rides cover the terrain from rim to rim. Horseback tours operate from stables just outside the park's south entrance.";
        GrandCanyon.header = @"United States & Canada";
        
        [self.Caradventure addObject:sanjuan];
        [self.Caradventure addObject:Bahamas];
        [self.afradventure addObject:VictoriaFalls];
        [self.afradventure addObject:KrugerPark];
        [self.Asiaadventure addObject:Bali];
        [self.Asiaadventure addObject:Chengdu];
        [self.euroadventure addObject:Alpes];
        [self.euroadventure addObject:ScotHigh];
        [self.mexadventure addObject:Machu];
        [self.mexadventure addObject:Ambergris];
        [self.spadventure addObject:Rarotonga];
        [self.spadventure addObject:BarrierReef];
        [self.USadventure addObject:Kailua];
        [self.USadventure addObject:GrandCanyon];
      //Adventure End Total 14 objects.
        
        
    }
    return self;
}

@end
