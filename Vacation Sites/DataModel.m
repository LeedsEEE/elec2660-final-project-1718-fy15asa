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
        
        
        //All data were taken from Trip Advisor website. Including images.
        //Filling all the arrays so we can display these data in our tables and viewcontrollers later
        
        //Adventure Objects Start.
        #pragma mark Adventure Objects
        self.Caradventure = [NSMutableArray array];
        Data *sanjuan = [[Data alloc]init];
        sanjuan.Name = @"San Juan";
        sanjuan.Location =@"Puerto Rico, Caribbean, North America";
        sanjuan.Description = @"Aquatic thrills abound in Puerto Rico, from world-class surfint at Rincon where the swells reach 35 feet to relaxed scuba diving, particularly around Mona Island, Isla de Vieques. On terra firma, the tropical terrain yields prime hiking, horseback riding and rock climbing opportunities.";
        sanjuan.header = @"SanJuan.jpg";
        
        
        self.Caradventure = [NSMutableArray array];
        Data *Bahamas = [[Data alloc]init];
        Bahamas.Name = @"Out Islands";
        Bahamas.Location = @"Out Islands, Bahamas, Caribbean, North America";
        Bahamas.Description =@"The Out Islands are synonymous with sport, from the depths of the Gulf Stream that yield big game fish to the coral reefs just off shore that are catnip to scuba divers. Sailing, kayaking and beach-combing add action to lazy days in the sun, while resident pink flamingos and rare Bahama parrots color local hikes.";
        Bahamas.header = @"Bahamas.jpg";
        
        
        self.afradventure = [NSMutableArray array];
        Data *VictoriaFalls = [[Data alloc]init];
        VictoriaFalls.Name = @"Victoria Falls";
        VictoriaFalls.Location = @"Matabeleland North Province, Zimbabwe, Africa";
        VictoriaFalls.Description = @"More than a mile wide and averaging 328 feet deep, Victoria Falls is one of the world's largest waterfalls and is the inspiration for numerous adrenaline-charged activities. Add to the visual rush with bungee jumping, whitewater rafting, helicopter fights, game drives or abseiling.";
        VictoriaFalls.header = @"VictoriaFalls.jpg";
        
        self.afradventure = [NSMutableArray array];
        Data *KrugerPark = [[Data alloc]init];
        KrugerPark.Name = @"Kruger National Park";
        KrugerPark.Location =@"South Africa, Africa";
        KrugerPark.Description =@"A game drive in search of the Big Five - lions, leopards, cape buffalo, elephants, and rhinos - is only the start in this South African safari mecca. Hit one of four adventure trails in a 4 X 4 for a self-guided tour through the park, take a ranger-led bush walk or soar in a hot-air balloon outside its boundaries.";
        KrugerPark.header = @"KrugerPark.jpg";
        
        self.Asiaadventure = [NSMutableArray array];
        Data *Bali = [[Data alloc]init];
        Bali.Name = @"Bali";
        Bali.Location = @"Indonesia, Asia";
        Bali.Description = @"Take in the lush, volcanically active landscape of Bali while whitewater rafting on the Ayung and Unda rivers. Or get the heart pumping off-shore with an ocean-rafting sightseeing and snorkeling tour in boats that reach 44 miles per hour. Surfers hit the island's western side for big-time swells.";
        Bali.header = @"Bali.jpg";
        
        self.Asiaadventure = [NSMutableArray array];
        Data *Chengdu = [[Data alloc]init];
        Chengdu.Name= @"Chengdu";
        Chengdu.Location = @"Chengdu, Sichuan, China, Asia";
        Chengdu.Description = @"Perched in a high mountain valley, Huanglong or Yellow Dragon National Park offers invigorating adventure options. The ambitious can trek to Lhasa, whitewater raft or embark on multi-day river journeys. Alternatively, a five-mile trot brings you to five terraced, temple pools glowing with stunning hues.";
        Chengdu.header = @"Chengdu.jpg";
        
        self.euroadventure = [NSMutableArray array];
        Data *Alpes = [[Data alloc]init];
        Alpes.Name = @"Provence-Alpes-Cote d'Azur";
        Alpes.Location = @"France, Europe";
        Alpes.Description = @"Cycling through Provence's rolling hills and charming villages, along twisting country roads and past 2000-year-old Roman aqueducts is by turns exhilarating and relaxing. Elsewhere in the region, a slew of activities awaits, from cliff climbing to skydiving to horseback riding or alpine skiing.";
        Alpes.header = @"alpes.jpg";
        
        self.euroadventure = [NSMutableArray array];
        Data *ScotHigh = [[Data alloc]init];
        ScotHigh.Name = @"Scottish Highlands";
        ScotHigh.Location=@"Scotland, England, Europe";
        ScotHigh.Description = @"Hike or mountain bike past castles, lochs, Highland Cows and purple heather in the romantic Scottish Highlands. Experience the beauty of the country as you trot north on the West Highland Way from Glasgow to Fort William or explore the country's first national park, Loch Lomond and the Trossachs.";
        ScotHigh.header = @"Scott.jpg";
        
        self.mexadventure = [NSMutableArray array];
        Data *Machu = [[Data alloc]init];
        Machu.Name = @"Machu Picchu";
        Machu.Location = @"Sacred Valley, Cusco Region, Peru, South America";
        Machu.Description = @"Hike the Inca Trail to the majestic Lost Cities of the Incas, hidden in dense Amazonian jungle, 7000 feet above sea level. This ancient road treks 25 miles from Cuzco through deep Andean gullies and is not for the faint-hearted. Climb up to overlook the ruins and the Urubamba Valley from Huayna Pichu Mountain.";
        Machu.header = @"Machu.jpg";
        
        self.mexadventure = [NSMutableArray array];
        Data *Ambergris = [[Data alloc]init];
        Ambergris.Name= @"Ambergris Caye";
        Ambergris.Location = @"Belize Cayes, Belize, Central America";
        Ambergris.Description = @"Belize's largest island and an often overlooked Caribbean gem offers astounding diving and snorkeling. This English-speaking nation is home to one of the largest coral reef systems in the world. If you want to stay atop the waves, this Caribbean idyll provides fabulous fishing, sailing and kayaking.";
        Ambergris.header = @"Ambergris.jpg";
        
        self.spadventure = [NSMutableArray array];
        Data *Rarotonga = [[Data alloc]init];
        Rarotonga.Name = @"Rarotonga";
        Rarotonga.Location = @"Southern Cook Islands, Cook Islands, South Pacific";
        Rarotonga.Description = @"On the Cooks' capital island, horseback treks, hiking and boat tours provide close-up views of the lush, mountainous terrain. In the surrounding Pacific waters, diving and snorkeling are the top draw: green turtles, reef sharks, moray eels and a cavalcade of tropical fish patrol the islands' coral reefs.";
        Rarotonga.header = @"Rarotonga.jpg";
        
        
        self.spadventure = [NSMutableArray array];
        Data *BarrierReef = [[Data alloc]init];
        BarrierReef.Name = @"Great Barrier Reef";
        BarrierReef.Location = @"Queensland, Australia, South Pacific";
       BarrierReef.Description = @"With 1,400 miles of coral reef stretching along the Queensland coast and 1,500 fish species, the World Heritage List-designated Great Barrier Reef is a scuba lover's dream destination. Accompany underwater exploration with coastal adventures like bungee jumping or rafting through rain forests near Cairns";
        BarrierReef.header = @"Reef.jpg";
        
        
        self.USadventure = [NSMutableArray array];
        Data *Kailua = [[Data alloc]init];
        Kailua.Name = @"Kailua-Kona";
        Kailua.Location = @"Island of Hawaii, Hawaii, United States, North America";
        Kailua.Description = @"Located about two miles north of the airport, the Kona Coast State Park's trio of tranquil, uncrowded beaches cater to swimming, kayaking, picnicking and snorkeling. It's possible to spot Hawaiian green sea turtles among the arches and caves of the offshore coral reefs. Surfers congregate in the winter for the big surf.";
        Kailua.header = @"Kilua.jpg";
        
        
        self.USadventure = [NSMutableArray array];
        Data *GrandCanyon = [[Data alloc]init];
        GrandCanyon.Name = @"Grand Canyon National Park";
        GrandCanyon.Location = @"Arizona, United States, North America";
       GrandCanyon.Description=@"At this behemoth of a canyon, whitewater and calm water rafting trips plunge along 277 river miles, fixed-wing and helicopter tours soar above its mile-deep maw and hikes and mule rides cover the terrain from rim to rim. Horseback tours operate from stables just outside the park's south entrance.";
        GrandCanyon.header = @"GrandCanyon.jpg";
       //Adventure Objects End.
        
        
       //Family Objects start
        #pragma mark Family Objects
        self.USfamilyfun = [NSMutableArray array];
        Data *Anaheim = [[Data alloc]init];
        Anaheim.Name = @"Anaheim";
        Anaheim.Location = @"California, United States, North America";
        Anaheim.Description = @"Anaheim is ideally situated to take advantage of all Orange County's adventures, whether you plan on delving into the delights of Disneyland or basking on the bountiful beaches. Biplanes and hot-air balloons soar over O.C.'s aquariums, museums and restaurants. A visit to Nixon's Birthplace adds another element to family vacations.";
        Anaheim.header = @"Anaheim.jpg";
        
        
        self.USfamilyfun = [NSMutableArray array];
        Data *Orlando = [[Data alloc]init];
        Orlando.Name = @"Orlando";
        Orlando.Location = @"Florida, United States, North America";
        Orlando.Description = @"Orlando offers opportunities to ricochet through a thrilling itinerary of roller coasters, resorts, dinosaurs and Disney amusements. Fantastic family fun plus shows and rides galore come courtesy of Walt Disney World, SeaWorld Orlando and Universal's Islands of Adventure and Universal Studios.";
        Orlando.header = @"Orlando.jpg";
        
        self.mexfamilyfun = [NSMutableArray array];
        Data *Playa = [[Data alloc]init];
        Playa.Name = @"Playa del Carmen";
        Playa.Location=@"Yucatan Peninsula, Mexico, North America";
        Playa.Description=@"Playa del Carmen, on the Mexican Caribbean, is home to sandy beaches, Mayan archaeological sites and child-centered theme parks. Kids and adults enjoy clambering through Discovery Jungle Park's authentic rope bridges and exploring Xcaret's underground rivers, butterfly pavilion and aquarium.";
        Playa.header = @"playa.jpg";
        
        
        self.mexfamilyfun = [NSMutableArray array];
        Data *Cancun = [[Data alloc]init];
        Cancun.Name= @"Cancun";
        Cancun.Location = @"Yucatan Peninsula, Mexico, North America";
        Cancun.Description = @"Cancun is one of Mexico's most famous destinations, and despite its reputation as a spring-break paradise, families will find plenty to do here, too. Explore ancient Mayan ruins, the Xel-Ha waterpark and the thrilling Interactive Aquarium, or just enjoy beautiful beaches.";
        Cancun.header = @"cancun.jpg";
        
        
        self.eurofamilyfun = [NSMutableArray array];
        Data *Dublin = [[Data alloc]init];
        Dublin.Name = @"Dublin";
        Dublin.Location = @"County Dublin, Ireland, Europe";
        Dublin.Description = @"Friendly, frenetic Dublin is a perfect destination for the family. Ride the Viking Splash Tour, visit Dublin Zoo, feed ducks in Stephen's Green, picnic in Phoenix Park and visit the Ark, a children's cultural center in Temple Bar. After tiring the kids out, relax with a well-earned Guinness in the evening.";
        Dublin.header = @"Dublin.jpg";
        
        self.eurofamilyfun = [NSMutableArray array];
        Data *Barcelona = [[Data alloc]init];
        Barcelona.Name = @"Barcelona";
        Barcelona.Location = @"Catalonia, Spain, Europe";
        Barcelona.Description = @"The winning combination of culture, coastline and a great climate make Barcelona a top choice for the whole family. Gaudi's astounding architectural creations amaze. Some appealing beaches provide daytime diversions. Sights such as the aquarium and Las Ramblas provide yet more entertainment";
        Barcelona.header = @"Barcelona.jpg";
        
        self.Carfamilyfun = [NSMutableArray array];
        Data *Aruba = [[Data alloc]init];
        Aruba.Name = @"Aruba";
        Aruba.Location = @"Caribbean, North America";
        Aruba.Description = @"Clear waters and great weather are merely two of Aruba's draws. A smorgasbord of activities, from snorkeling to banana boating, entertains families above and below the waves, while jeep safari and quadracer tours are offered inland. A glimpse of the island's personality and past can be viewed at the Aruba Panorama.";
        Aruba.header = @"Aruba.jpg";
        
        
        self.Carfamilyfun = [NSMutableArray array];
        Data *Dominican = [[Data alloc]init];
        Dominican.Name = @"Dominican Republic";
        Dominican.Location = @"Caribbean, North America";
        Dominican.Description = @"Experience the Caribbean and get back to nature in the Dominican Republic. Families can swim with sea lions, dolphins--or sharks for the truly adventurous--at Ocean World, or go into the tropical island jungle on a Jeep safari.";
        Dominican.header = @"Dominican.jpg";
        //Family objects end.
        
        //Relaxation objects start
#pragma mark Relaxtaion Objects
        self.afrrelaxation = [NSMutableArray array];
        Data *Deadsea = [[Data alloc]init];
        Deadsea.Name =@"Dead Sea";
        Deadsea.Location=@"Israel, Middle East";
        Deadsea.Description = @"Follow the mineral-rich muddy footprints of Herod, Solomon and Cleopatra to the legendary Dead Sea and resorts developed round its adjacent hot springs. This famed health destination, at the world's lowest dry point, is known for helping with rheumatic and skin problems.";
        Deadsea.header = @"DeadSea.jpg";
        
        self.afrrelaxation = [NSMutableArray array];
        Data *Marrakech = [[Data alloc]init];
        Marrakech.Name = @"Marrakech";
        Marrakech.Location = @"Marrakech-Tensift-El Haouz Region, Morocco, Africa";
        Marrakech.Description = @"Take a break from the heat and bustling streets of Marrakech to relax and indulge in one of the city's countless authentic hammams or world-class spas. Visit the luxurious Heritage Spa where only 100% natural organic products are used, or indulge your senses at the Hammam of La Maison Arabe.";
        Marrakech.header = @"Marrakech.jpg";
        
        self.Asirelaxation = [NSMutableArray array];
        Data *Taipei = [[Data alloc]init];
        Taipei.Name = @"Taipei";
        Taipei.Location= @"Taiwan, Asia";
        Taipei.Description = @"Boasting an utterly exhilarating array of thermal hot springs, Taipei can easily claim to be the volcanic springs capital of Asia. Ninety-nine such tectonic treats dot the landscape, with many of the most popular spots within an hour's drive of downtown in Yangming Shan, Peitou and Wulai.";
        Taipei.header = @"Taipei.jpg";
        
        self.Asirelaxation = [NSMutableArray array];
        Data *phuket = [[Data alloc]init];
        phuket.Name = @"Phuket";
        phuket.Location = @"Thailand, Asia";
        phuket.Description = @"Recently discovered as a spa haven, Phuket now offers a plethora of spas, such as the luxurious Spa Burasari, and the acclaimed Banyan Tree. Try one of many Banyan Indulgences at the Banyan Tree, featuring holistic signature treatments for complete physical, mental and spiritual renewal.";
        phuket.header = @"Phuket.jpg";
        
        self.Carrelaxation = [NSMutableArray array];
        Data *Negril = [[Data alloc]init];
        Negril.Name = @" Negril";
        Negril.Location = @"Westmoreland Parish, Jamaica, Caribbean, North America";
        Negril.Description = @"Health and relaxation resorts confetti Jamaica's vacation playground, Negril, from secluded holistic havens to vast, popular mega-resorts. Book massage treatments and then sink blissfully into the jubilant pace of life of this idyllic, laid-back beach resort, famed for its glorious white sands.";
        Negril.header = @"Negril.jpg";
       
        
        self.eurorelaxation = [NSMutableArray array];
        Data *Iceland = [[Data alloc]init];
        Iceland.Name = @"Iceland";
        Iceland.Location = @"Europe";
        Iceland.Description=@"Richer in geothermal activity than any other country, Iceland is a veritable hot spring hotspot. Around 800 hot springs, some with dramatically spouting geysers, pepper the landscape. The most famed is the stunning, steaming, turquoise Blue Lagoon in Grindavik, just beside capital Reykjavik.Richer in geothermal activity than any other country, Iceland is a veritable hot spring hotspot. Around 800 hot springs, some with dramatically spouting geysers, pepper the landscape. The most famed is the stunning, steaming, turquoise Blue Lagoon in Grindavik, just beside capital Reykjavik.";
        Iceland.header = @"Iceland.jpg";
        
        self.eurorelaxation = [NSMutableArray array];
        Data *Budapest = [[Data alloc]init];
        Budapest.Name =@"Budapest";
        Budapest.Location = @"Central Hungary, Hungary, Europe";
        Budapest.Description=@"Over 15 million gallons of water bubble into Budapest's 118 springs and boreholes daily. The city of spas offers an astounding array of baths, from the sparkling Gellert Baths to the vast 1913 neo-Baroque Szechenyi Spa to Rudas Spa, a dramatic 16th-century Turkish pool with original Ottoman architecture.";
        Budapest.header=@"Budapest.jpg";
        
        self.mexrelaxation = [NSMutableArray array];
        Data *Costa = [[Data alloc]init];
        Costa.Name=@"Costa Rica";
        Costa.Location = @"Central America";
        Costa.Description=@"Breathtaking mineral pools, magma-heated lagoons and toasty hot volcano-fed hot springs abound in Costa Rica. Perhaps the most famed is San Carlos hot springs, where shaman-led temazcal rituals include chanting and meditation at a traditional Mesoamerican sweat lodge and steaming waters await.";
        Costa.header=@"Costa.jpg";
        
        self.mexrelaxation = [NSMutableArray array];
        Data *Tulum = [[Data alloc]init];
        Tulum.Name = @"Tulum";
        Tulum.Location = @"Yucatan Peninsula, Mexico, North America";
        Tulum.Description=@"Traditional Maya spas have become yet another reason to visit ruin-rich Tulum. Today's spas offer Westernized takes on the mystical, spiritual Maya massage rituals. Acclaimed Yucatan health haven Maya Tulum offers the blissful combination of palapa rooms on a sandy spit and soothing holistic treatments.";
        Tulum.header = @"Tulum.jpg";
        
        
        
        self.sprelaxation = [NSMutableArray array];
        Data *Fiji = [[Data alloc]init];
        Fiji.Name = @"Fiji";
        Fiji.Location = @"South Pacific";
        Fiji.Description = @"If it wasn't soothing enough already, Fiji offers an enticing array of distinctive relaxation options. Traditional Fijian Bobo massage, a healing blend of massage and local nut oils, Duavata island-style four-handed massage and Thalgo therapy mud and algae wraps top enticing local treatment options.";
        Fiji.header = @"Fiji.jpg";
        
        self.sprelaxation = [NSMutableArray array];
        Data *Rotorua = [[Data alloc]init];
        Rotorua.Name=@"Rotorua";
        Rotorua.Location = @"Rotorua District, Bay of Plenty Region, North Island, New Zealand, South Pacific";
        Rotorua.Description =@"A bevy of bubbling mineral springs and pools lure lovers of outdoor relaxation opportunities to Rotorua on New Zealand's North Island. Therapeutic hot mud pools, dramatic geysers and a buried village are within easy reach of the city. Many accommodations offer thermal swimming and plunge pools.";
        Rotorua.header = @"Rotorua.jpg";
        
        self.USrelaxation = [NSMutableArray array];
        Data *Hawaii = [[Data alloc]init];
        Hawaii.Name = @"Hawaii";
        Hawaii.Location =@"United States, North America";
        Hawaii.Description = @"As many types of spas as there are colors of volcanic sand abound in Hawaii. Choose from a flotilla of distinctively Hawaiian takes on traditional therapies, from seashell massage to volcanic ash facials and hot lava stone. If the energy of the dynamic waves doesn't renew you, test the waters of Watsu, a water-based shiatsu form.";
        Hawaii.header = @"Hawaii.jpg";
        
        
        self.USrelaxation = [NSMutableArray array];
        Data *Scottsdale = [[Data alloc]init];
        Scottsdale.Name = @"Scottsdale";
        Scottsdale.Location = @"Arizona, United States, North America";
        Scottsdale.Description = @"A constellation of stellar spas and resorts dot the upscale desert and surrounds of Scottsdale. With the highest number of resort spas per capita in the U.S., Scottsdale's sumptuous resorts lure luminaries, visitors and locals for every decadent and relaxing treatment under the hot Arizona sun.";
        Scottsdale.header = @"Scottsdale.jpg";
        // End of Relaxation and Rejuvenation
        
        //Start of Beaches & Sun Objects
        #pragma mark Beaches Objects
        self.afrbeaches = [NSMutableArray array];
        Data *Camps = [[Data alloc]init];
        Camps.Name = @"Camps Bay";
        Camps.Location=@"Western Cape, South Africa, Africa";
        Camps.Description=@"Shaded spots go early at Cape Town's crowded Camps Bay, where locals picnic and play in the strong Atlantic waves. Look for the flagged bathing areas for safer swims for all the family. Festive cafes sit adjacent to the sands, which are dramatically set at the foot of the Twelve Apostles mountains.";
        Camps.header = @"Camps.jpg";
        
        self.afrbeaches = [NSMutableArray array];
        Data *Seychelles = [[Data alloc]init];
        Seychelles.Name = @" Seychelles";
        Seychelles.Location = @"Africa";
        Seychelles.Description =@"This Indian Ocean group of 100+ islands is home to some of the world's most beautiful beaches, including the popular white powder of Beau Vallon on Mahe and Anse Lazio on Praslin. The stunning pink sands and boulders of Anse Source d'Argent on La Digue lead many to call it the most gorgeous beach on earth.";
        Seychelles.header = @"Seychelles.jpg";
        
        
        self.Asibeaches = [NSMutableArray array];
        Data *Maldives = [[Data alloc]init];
        Maldives.Name = @"Maldives";
        Maldives.Location = @"Asia";
        Maldives.Description=@"More than two dozens Indian Ocean atolls and thousands of islets comprise the Maldives. Idyllic beaches, such as South Ari Atoll on Nalaguraidhoo, the Sun Island, are a dream come true for sand lovers. Swim out to the barrier reef - or from some parts of the island, admire the reef right from the gorgeous white beach.";
        Maldives.header = @"Maldives.jpg";
        
        self.Asibeaches = [NSMutableArray array];
        Data *Ko = [[Data alloc]init];
        Ko.Name = @"Ko Samui";
        Ko.Location = @" Surat Thani Province, Thailand, Asia";
        Ko.Description = @"Koh Samui's myriad beaches present everything you could ever dream of in a tropical beach. Picture-perfect sands, coconut trees and palm fronds adorn each one, but there the similarities end. Choose from busy beaches, teeming with vendors and cafes, or secluded strips with not another person in sight.";
        Ko.header = @"Ko.jpg";
        
        
        self.Carbeaches = [NSMutableArray array];
        Data *Virgin = [[Data alloc]init];
        Virgin.Name = @"U.S. Virgin Islands";
        Virgin.Location = @"Caribbean, North America";
        Virgin.Description = @"Swaths of powdery sand separate green hills from the crystal-clear Caribbean waters surrounding the U.S. Virgin Islands. Beach aficionados should beeline for idyllic St. John, home of windsurfer-friendly Cinnamon Bay, the beachside cafes of Cruz Bay, and less-frequented Francis Bay beach.";
        Virgin.header = @"Virgin.jpg";
        
        
        self.Carbeaches = [NSMutableArray array];
        Data *stmartin = [[Data alloc]init];
        stmartin.Name = @"St Martin";
        stmartin.Location = @" Caribbean, North America";
        stmartin.Description = @"There is no shortage of beautiful shoreline on St. Martin, which boasts some 37 beaches. What sets these apart from other Caribbean beaches is their breathtaking environs--visitors will not only be stunned by the white sand and gorgeous water but also by caves, cliffs, palm trees and rock formations.";
        stmartin.header =@"StMartin.jpg";
        
        self.eurobeaches = [NSMutableArray array];
        Data *Santorini = [[Data alloc]init];
        Santorini.Name = @"Santorini";
        Santorini.Location = @"Cyclades, South Aegean, Greece, Europe";
        Santorini.Description =@"While most of the beaches on these geologically new Greek islands are black due to their volcanic creation, Santorini's most famous is probably Red Beach near Akrotiri. Perissa Beach on the main island’s west and Kamari Beach on the east are both long, black, spectacular and very popular with tourists.";
        Santorini.header=@"santorini.jpg";
        
        self.eurobeaches = [NSMutableArray array];
        Data *Tenerife = [[Data alloc]init];
        Tenerife.Name=@"Tenerife";
        Tenerife.Location=@"Canary Islands, Spain, Europe";
        Tenerife.Description = @"Part of the Canary Islands, Tenerife is largely a resort island with brilliant man-made beaches of fine black shingle or golden sand. With calm, clear waters and an almost constant wind, Tenerife in a windsurfer's dream. You can also sunbathe, swim, snorkel and scuba dive along the beautiful coastline.";
        Tenerife.header = @"Tenerife.jpg";
        
        self.mexbeaches = [NSMutableArray array];
        Data *Cabo = [[Data alloc]init];
        Cabo.Name = @"Cabo San Lucas";
        Cabo.Location = @"Los Cabos, Baja California, Mexico, North America";
        Cabo.Description= @"Cabo's beaches are not just beautiful, they're also incredibly diverse. On the Pacific Ocean, the waves are delightful to watch, but often too dangerous for swimming. On the Sea of Cortez, the waters are sheltered and calm and the sand is white and warm.";
        Cabo.header=@"Cabo.jpg";
        
        self.mexbeaches = [NSMutableArray array];
        Data *Cozumel = [[Data alloc]init];
        Cozumel.Name = @"Cozumel";
        Cozumel.Location = @"Yucatan Peninsula, Mexico, North America";
        Cozumel.Description = @"Going to the seashore at Cozumel is fascinating because of the island's diverse beach offerings. Although it has its fair share of typically beautiful white-sand beaches, it also boasts a number of rocky beaches that are not great for sunbathing or swimming but are ideal for snorkeling.";
        Cozumel.header = @"Cozumel.jpg";
        
        self.spbeaches = [NSMutableArray array];
        Data *Sydney = [[Data alloc]init];
        Sydney.Name = @"Sydney";
        Sydney.Location = @"New South Wales, Australia, South Pacific";
        Sydney.Description = @"With dozens of stunning ocean beaches within half an hour of downtown, there are few better urban beach destinations than Sydney. Famed Bondi Beach sees up to 40,000 on busy weekends. If quieter beaches appeal, take the coastal walk past smaller strands all the way to Coogee's calmer sands.";
        Sydney.header = @"Sydney.jpg";
        
        
        self.spbeaches = [NSMutableArray array];
        Data *Bora = [[Data alloc]init];
        Bora.Name = @"Bora Bora";
        Bora.Location = @"Society Islands, French Polynesia, South Pacific";
        Bora.Description = @"Although a fairly small island, Bora Bora offers visitors a multitude of activities. Go on a 4x4 safari, sunbathe and swim on white sandy beaches, dive in a natural underwater park among fish and corals, experience thrilling shark feedings or circle the turquoise lagoon by boat.";
        Bora.header = @"Bora.jpg";
        
        self.USbeaches = [NSMutableArray array];
        Data *Miami = [[Data alloc]init];
        Miami.Name=@"Miami Beach";
        Miami.Location=@"Florida, United States, North America";
        Miami.Description = @"At the shore in Miami Beach, visitors can swim, surf and jet ski in the warm and crystal-clear Atlantic waters. You can also nap on the white sands, work on a tan or simply watch the beautiful people, especially at South Beach, a favorite of models and celebrities.";
        Miami.header= @"Miami.jpg";
        
        self.USbeaches = [NSMutableArray array];
        Data *Kauai = [[Data alloc]init];
        Kauai.Name=@"Kauai";
        Kauai.Location = @"Hawaii, United States, North America";
        Kauai.Description = @"With about 50 miles of beaches, Kauai has plenty of shoreline to explore. Swimming is great just about anywhere, but most people prefer the beaches on the north and south coasts, where the white sands stretch on and on and surfers refine their craft.";
        Kauai.header = @"Kauai.jpg";
        
        
        
        //Adding all the objects to the array 
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
        [self.USfamilyfun addObject:Anaheim];
        [self.USfamilyfun addObject:Orlando];
        [self.mexfamilyfun addObject:Cancun];
        [self.mexfamilyfun addObject:Playa];
        [self.eurofamilyfun addObject:Dublin];
        [self.eurofamilyfun addObject:Barcelona];
        [self.Carfamilyfun addObject:Aruba];
        [self.Carfamilyfun addObject:Dominican];
        [self.afrrelaxation addObject:Deadsea];
        [self.afrrelaxation addObject:Marrakech];
        [self.Asirelaxation addObject:Taipei];
        [self.Asirelaxation addObject:phuket];
        [self.Carrelaxation addObject:Negril];
        [self.eurorelaxation addObject:Iceland];
        [self.eurorelaxation addObject:Budapest];
        [self.mexrelaxation addObject:Costa];
        [self.mexrelaxation addObject:Tulum];
        [self.sprelaxation addObject:Fiji];
        [self.sprelaxation addObject:Rotorua];
        [self.USrelaxation addObject:Hawaii];
        [self.USrelaxation addObject:Scottsdale];
        [self.afrbeaches addObject:Camps];
        [self.afrbeaches addObject:Seychelles];
        [self.Asibeaches addObject:Maldives];
        [self.Asibeaches addObject:Ko];
        [self.Carbeaches addObject:Virgin];
        [self.Carbeaches addObject:stmartin];
        [self.eurobeaches addObject:Tenerife];
        [self.eurobeaches addObject:Santorini];
        [self.mexbeaches addObject:Cabo];
        [self.mexbeaches addObject:Cozumel];
        [self.spbeaches addObject:Sydney];
        [self.spbeaches addObject:Bora];
        [self.USbeaches addObject:Miami];
        [self.USbeaches addObject:Kauai];
        
        
    }
    return self;
}

    


@end
