// Benchmark "top" written by ABC on Fri Feb 25 15:09:07 2022

module router ( 
    \dest_x[0] , \dest_x[1] , \dest_x[2] , \dest_x[3] , \dest_x[4] ,
    \dest_x[5] , \dest_x[6] , \dest_x[7] , \dest_x[8] , \dest_x[9] ,
    \dest_x[10] , \dest_x[11] , \dest_x[12] , \dest_x[13] , \dest_x[14] ,
    \dest_x[15] , \dest_x[16] , \dest_x[17] , \dest_x[18] , \dest_x[19] ,
    \dest_x[20] , \dest_x[21] , \dest_x[22] , \dest_x[23] , \dest_x[24] ,
    \dest_x[25] , \dest_x[26] , \dest_x[27] , \dest_x[28] , \dest_x[29] ,
    \dest_y[0] , \dest_y[1] , \dest_y[2] , \dest_y[3] , \dest_y[4] ,
    \dest_y[5] , \dest_y[6] , \dest_y[7] , \dest_y[8] , \dest_y[9] ,
    \dest_y[10] , \dest_y[11] , \dest_y[12] , \dest_y[13] , \dest_y[14] ,
    \dest_y[15] , \dest_y[16] , \dest_y[17] , \dest_y[18] , \dest_y[19] ,
    \dest_y[20] , \dest_y[21] , \dest_y[22] , \dest_y[23] , \dest_y[24] ,
    \dest_y[25] , \dest_y[26] , \dest_y[27] , \dest_y[28] , \dest_y[29] ,
    \outport[0] , \outport[1] , \outport[2] , \outport[3] , \outport[4] ,
    \outport[5] , \outport[6] , \outport[7] , \outport[8] , \outport[9] ,
    \outport[10] , \outport[11] , \outport[12] , \outport[13] ,
    \outport[14] , \outport[15] , \outport[16] , \outport[17] ,
    \outport[18] , \outport[19] , \outport[20] , \outport[21] ,
    \outport[22] , \outport[23] , \outport[24] , \outport[25] ,
    \outport[26] , \outport[27] , \outport[28] , \outport[29]   );
  input  \dest_x[0] , \dest_x[1] , \dest_x[2] , \dest_x[3] , \dest_x[4] ,
    \dest_x[5] , \dest_x[6] , \dest_x[7] , \dest_x[8] , \dest_x[9] ,
    \dest_x[10] , \dest_x[11] , \dest_x[12] , \dest_x[13] , \dest_x[14] ,
    \dest_x[15] , \dest_x[16] , \dest_x[17] , \dest_x[18] , \dest_x[19] ,
    \dest_x[20] , \dest_x[21] , \dest_x[22] , \dest_x[23] , \dest_x[24] ,
    \dest_x[25] , \dest_x[26] , \dest_x[27] , \dest_x[28] , \dest_x[29] ,
    \dest_y[0] , \dest_y[1] , \dest_y[2] , \dest_y[3] , \dest_y[4] ,
    \dest_y[5] , \dest_y[6] , \dest_y[7] , \dest_y[8] , \dest_y[9] ,
    \dest_y[10] , \dest_y[11] , \dest_y[12] , \dest_y[13] , \dest_y[14] ,
    \dest_y[15] , \dest_y[16] , \dest_y[17] , \dest_y[18] , \dest_y[19] ,
    \dest_y[20] , \dest_y[21] , \dest_y[22] , \dest_y[23] , \dest_y[24] ,
    \dest_y[25] , \dest_y[26] , \dest_y[27] , \dest_y[28] , \dest_y[29] ;
  output \outport[0] , \outport[1] , \outport[2] , \outport[3] , \outport[4] ,
    \outport[5] , \outport[6] , \outport[7] , \outport[8] , \outport[9] ,
    \outport[10] , \outport[11] , \outport[12] , \outport[13] ,
    \outport[14] , \outport[15] , \outport[16] , \outport[17] ,
    \outport[18] , \outport[19] , \outport[20] , \outport[21] ,
    \outport[22] , \outport[23] , \outport[24] , \outport[25] ,
    \outport[26] , \outport[27] , \outport[28] , \outport[29] ;
  wire new_n92_, new_n93_, new_n94_, new_n95_, new_n96_, new_n97_, new_n98_,
    new_n99_, new_n100_, new_n101_, new_n102_, new_n103_, new_n104_,
    new_n105_, new_n106_, new_n107_, new_n108_, new_n109_, new_n110_,
    new_n111_, new_n112_, new_n113_, new_n114_, new_n115_, new_n116_,
    new_n117_, new_n118_, new_n119_, new_n120_, new_n121_, new_n122_,
    new_n123_, new_n124_, new_n125_, new_n126_, new_n127_, new_n128_,
    new_n129_, new_n130_, new_n131_, new_n132_, new_n133_, new_n134_,
    new_n135_, new_n136_, new_n137_, new_n138_, new_n139_, new_n140_,
    new_n141_, new_n142_, new_n143_, new_n144_, new_n145_, new_n146_,
    new_n147_, new_n148_, new_n149_, new_n150_, new_n151_, new_n152_,
    new_n153_, new_n154_, new_n155_, new_n156_, new_n157_, new_n158_,
    new_n159_, new_n160_, new_n161_, new_n162_, new_n163_, new_n164_,
    new_n165_, new_n166_, new_n167_, new_n168_, new_n169_, new_n170_,
    new_n171_, new_n172_, new_n173_, new_n174_, new_n175_, new_n176_,
    new_n177_, new_n178_, new_n179_, new_n180_, new_n181_, new_n182_,
    new_n183_, new_n184_, new_n185_, new_n186_, new_n187_, new_n188_,
    new_n189_, new_n190_, new_n191_, new_n192_, new_n193_, new_n194_,
    new_n195_, new_n196_, new_n197_, new_n198_, new_n199_, new_n200_,
    new_n201_, new_n202_, new_n203_, new_n204_, new_n205_, new_n206_,
    new_n207_, new_n208_, new_n209_, new_n210_, new_n211_, new_n212_,
    new_n213_, new_n214_, new_n215_, new_n217_, new_n218_, new_n219_,
    new_n220_, new_n221_, new_n222_, new_n223_, new_n224_, new_n225_,
    new_n226_, new_n227_, new_n228_, new_n229_, new_n230_, new_n231_,
    new_n232_, new_n233_, new_n234_, new_n235_, new_n236_, new_n237_,
    new_n238_, new_n239_, new_n240_, new_n241_, new_n242_, new_n243_,
    new_n244_, new_n245_, new_n246_, new_n247_, new_n248_, new_n249_,
    new_n250_, new_n251_, new_n252_, new_n253_, new_n254_, new_n255_,
    new_n256_, new_n257_, new_n258_, new_n259_, new_n260_, new_n261_,
    new_n262_, new_n263_, new_n264_, new_n265_, new_n266_, new_n267_,
    new_n268_, new_n269_, new_n270_, new_n271_, new_n272_, new_n273_,
    new_n274_, new_n275_, new_n276_, new_n277_, new_n278_, new_n279_,
    new_n280_, new_n281_, new_n282_, new_n283_, new_n284_, new_n285_,
    new_n286_, new_n287_, new_n288_, new_n289_, new_n290_, new_n291_,
    new_n292_, new_n293_, new_n294_, new_n295_, new_n296_, new_n297_,
    new_n298_, new_n299_, new_n300_, new_n301_, new_n302_, new_n303_,
    new_n304_, new_n305_, new_n306_, new_n307_, new_n308_, new_n309_,
    new_n310_, new_n311_, new_n312_, new_n313_, new_n314_, new_n315_,
    new_n316_, new_n317_, new_n318_, new_n319_, new_n320_, new_n321_,
    new_n322_, new_n323_, new_n324_, new_n325_, new_n326_, new_n327_,
    new_n328_, new_n329_, new_n330_, new_n331_, new_n332_, new_n333_,
    new_n334_, new_n335_, new_n336_, new_n337_, new_n338_, new_n339_,
    new_n340_, new_n341_, new_n342_, new_n343_, new_n345_, new_n346_,
    new_n347_;
  assign new_n92_ = ~\dest_x[9]  & ~\dest_x[10] ;
  assign new_n93_ = \dest_x[9]  & \dest_x[10] ;
  assign new_n94_ = ~new_n92_ & ~new_n93_;
  assign new_n95_ = \dest_x[11]  & ~new_n92_;
  assign new_n96_ = ~\dest_x[11]  & new_n92_;
  assign new_n97_ = ~new_n95_ & ~new_n96_;
  assign new_n98_ = ~\dest_x[12]  & ~new_n95_;
  assign new_n99_ = \dest_x[12]  & new_n95_;
  assign new_n100_ = ~new_n98_ & ~new_n99_;
  assign new_n101_ = ~\dest_x[13]  & new_n98_;
  assign new_n102_ = \dest_x[13]  & ~new_n98_;
  assign new_n103_ = ~new_n101_ & ~new_n102_;
  assign new_n104_ = \dest_x[14]  & ~new_n101_;
  assign new_n105_ = ~\dest_x[14]  & new_n101_;
  assign new_n106_ = ~new_n104_ & ~new_n105_;
  assign new_n107_ = \dest_x[15]  & ~new_n104_;
  assign new_n108_ = ~\dest_x[15]  & new_n104_;
  assign new_n109_ = ~new_n107_ & ~new_n108_;
  assign new_n110_ = \dest_x[15]  & new_n104_;
  assign new_n111_ = ~\dest_x[16]  & ~new_n110_;
  assign new_n112_ = \dest_x[16]  & new_n110_;
  assign new_n113_ = ~new_n111_ & ~new_n112_;
  assign new_n114_ = \dest_x[17]  & ~new_n111_;
  assign new_n115_ = ~\dest_x[17]  & new_n111_;
  assign new_n116_ = ~new_n114_ & ~new_n115_;
  assign new_n117_ = ~\dest_x[18]  & ~new_n114_;
  assign new_n118_ = \dest_x[18]  & new_n114_;
  assign new_n119_ = ~new_n117_ & ~new_n118_;
  assign new_n120_ = \dest_x[19]  & ~new_n117_;
  assign new_n121_ = ~\dest_x[19]  & new_n117_;
  assign new_n122_ = ~new_n120_ & ~new_n121_;
  assign new_n123_ = \dest_x[20]  & ~new_n120_;
  assign new_n124_ = ~\dest_x[20]  & new_n120_;
  assign new_n125_ = ~new_n123_ & ~new_n124_;
  assign new_n126_ = \dest_x[20]  & new_n120_;
  assign new_n127_ = ~\dest_x[21]  & ~new_n126_;
  assign new_n128_ = \dest_x[21]  & new_n126_;
  assign new_n129_ = ~new_n127_ & ~new_n128_;
  assign new_n130_ = ~\dest_x[22]  & new_n127_;
  assign new_n131_ = \dest_x[22]  & ~new_n127_;
  assign new_n132_ = ~new_n130_ & ~new_n131_;
  assign new_n133_ = \dest_x[23]  & ~new_n130_;
  assign new_n134_ = ~\dest_x[23]  & new_n130_;
  assign new_n135_ = ~new_n133_ & ~new_n134_;
  assign new_n136_ = \dest_x[24]  & ~new_n133_;
  assign new_n137_ = ~\dest_x[24]  & new_n133_;
  assign new_n138_ = ~new_n136_ & ~new_n137_;
  assign new_n139_ = \dest_x[24]  & new_n133_;
  assign new_n140_ = \dest_x[25]  & ~new_n139_;
  assign new_n141_ = ~\dest_x[25]  & new_n139_;
  assign new_n142_ = ~new_n140_ & ~new_n141_;
  assign new_n143_ = \dest_x[25]  & new_n139_;
  assign new_n144_ = ~\dest_x[26]  & ~new_n143_;
  assign new_n145_ = \dest_x[26]  & new_n143_;
  assign new_n146_ = ~new_n144_ & ~new_n145_;
  assign new_n147_ = \dest_x[27]  & ~new_n144_;
  assign new_n148_ = ~\dest_x[27]  & new_n144_;
  assign new_n149_ = ~new_n147_ & ~new_n148_;
  assign new_n150_ = \dest_x[28]  & ~new_n147_;
  assign new_n151_ = ~\dest_x[28]  & new_n147_;
  assign new_n152_ = ~new_n150_ & ~new_n151_;
  assign new_n153_ = \dest_x[28]  & new_n147_;
  assign new_n154_ = ~\dest_x[29]  & new_n153_;
  assign new_n155_ = \dest_x[29]  & ~new_n153_;
  assign new_n156_ = ~new_n154_ & ~new_n155_;
  assign new_n157_ = ~\dest_x[9]  & ~new_n156_;
  assign new_n158_ = ~new_n152_ & new_n157_;
  assign new_n159_ = new_n149_ & new_n158_;
  assign new_n160_ = ~new_n146_ & new_n159_;
  assign new_n161_ = ~new_n142_ & new_n160_;
  assign new_n162_ = ~new_n138_ & new_n161_;
  assign new_n163_ = new_n135_ & new_n162_;
  assign new_n164_ = ~new_n132_ & new_n163_;
  assign new_n165_ = ~new_n129_ & new_n164_;
  assign new_n166_ = ~new_n125_ & new_n165_;
  assign new_n167_ = new_n122_ & new_n166_;
  assign new_n168_ = ~new_n119_ & new_n167_;
  assign new_n169_ = new_n116_ & new_n168_;
  assign new_n170_ = ~new_n113_ & new_n169_;
  assign new_n171_ = ~new_n109_ & new_n170_;
  assign new_n172_ = new_n106_ & new_n171_;
  assign new_n173_ = ~new_n103_ & new_n172_;
  assign new_n174_ = ~new_n100_ & new_n173_;
  assign new_n175_ = new_n97_ & new_n174_;
  assign new_n176_ = ~new_n94_ & new_n175_;
  assign new_n177_ = \dest_x[8]  & new_n176_;
  assign new_n178_ = \dest_x[7]  & new_n177_;
  assign new_n179_ = \dest_x[6]  & new_n178_;
  assign new_n180_ = \dest_x[5]  & new_n179_;
  assign new_n181_ = \dest_x[4]  & new_n180_;
  assign new_n182_ = \dest_x[3]  & new_n181_;
  assign new_n183_ = \dest_x[2]  & new_n182_;
  assign new_n184_ = \dest_x[1]  & new_n183_;
  assign new_n185_ = \dest_x[0]  & new_n184_;
  assign new_n186_ = \dest_x[29]  & new_n153_;
  assign new_n187_ = ~new_n185_ & ~new_n186_;
  assign new_n188_ = ~\dest_x[1]  & ~\dest_x[2] ;
  assign new_n189_ = ~\dest_x[3]  & new_n188_;
  assign new_n190_ = ~\dest_x[4]  & new_n189_;
  assign new_n191_ = ~\dest_x[5]  & new_n190_;
  assign new_n192_ = ~\dest_x[6]  & new_n191_;
  assign new_n193_ = ~\dest_x[7]  & new_n192_;
  assign new_n194_ = ~\dest_x[8]  & new_n193_;
  assign new_n195_ = new_n94_ & new_n194_;
  assign new_n196_ = ~new_n97_ & new_n195_;
  assign new_n197_ = new_n100_ & new_n196_;
  assign new_n198_ = new_n103_ & new_n197_;
  assign new_n199_ = ~new_n106_ & new_n198_;
  assign new_n200_ = new_n109_ & new_n199_;
  assign new_n201_ = new_n113_ & new_n200_;
  assign new_n202_ = ~new_n116_ & new_n201_;
  assign new_n203_ = new_n119_ & new_n202_;
  assign new_n204_ = ~new_n122_ & new_n203_;
  assign new_n205_ = new_n125_ & new_n204_;
  assign new_n206_ = new_n129_ & new_n205_;
  assign new_n207_ = new_n132_ & new_n206_;
  assign new_n208_ = ~new_n135_ & new_n207_;
  assign new_n209_ = new_n138_ & new_n208_;
  assign new_n210_ = new_n142_ & new_n209_;
  assign new_n211_ = new_n146_ & new_n210_;
  assign new_n212_ = ~new_n149_ & new_n211_;
  assign new_n213_ = new_n152_ & new_n212_;
  assign new_n214_ = \dest_x[9]  & new_n213_;
  assign new_n215_ = new_n186_ & ~new_n214_;
  assign \outport[0]  = new_n187_ | new_n215_;
  assign new_n217_ = ~\dest_y[9]  & ~\dest_y[10] ;
  assign new_n218_ = \dest_y[11]  & ~new_n217_;
  assign new_n219_ = ~\dest_y[12]  & ~new_n218_;
  assign new_n220_ = ~\dest_y[13]  & new_n219_;
  assign new_n221_ = \dest_y[14]  & ~new_n220_;
  assign new_n222_ = \dest_y[15]  & new_n221_;
  assign new_n223_ = ~\dest_y[16]  & ~new_n222_;
  assign new_n224_ = \dest_y[17]  & ~new_n223_;
  assign new_n225_ = ~\dest_y[18]  & ~new_n224_;
  assign new_n226_ = \dest_y[19]  & ~new_n225_;
  assign new_n227_ = \dest_y[20]  & new_n226_;
  assign new_n228_ = ~\dest_y[21]  & ~new_n227_;
  assign new_n229_ = ~\dest_y[22]  & new_n228_;
  assign new_n230_ = \dest_y[23]  & ~new_n229_;
  assign new_n231_ = \dest_y[24]  & new_n230_;
  assign new_n232_ = \dest_y[25]  & new_n231_;
  assign new_n233_ = ~\dest_y[26]  & ~new_n232_;
  assign new_n234_ = \dest_y[27]  & ~new_n233_;
  assign new_n235_ = \dest_y[28]  & new_n234_;
  assign new_n236_ = \dest_y[29]  & new_n235_;
  assign new_n237_ = \dest_x[0]  & ~new_n236_;
  assign new_n238_ = ~\dest_x[0]  & ~\dest_y[0] ;
  assign new_n239_ = new_n236_ & ~new_n238_;
  assign new_n240_ = \dest_y[9]  & \dest_y[10] ;
  assign new_n241_ = ~new_n217_ & ~new_n240_;
  assign new_n242_ = ~\dest_y[11]  & new_n217_;
  assign new_n243_ = ~new_n218_ & ~new_n242_;
  assign new_n244_ = \dest_y[12]  & new_n218_;
  assign new_n245_ = ~new_n219_ & ~new_n244_;
  assign new_n246_ = \dest_y[13]  & ~new_n219_;
  assign new_n247_ = ~new_n220_ & ~new_n246_;
  assign new_n248_ = ~\dest_y[14]  & new_n220_;
  assign new_n249_ = ~new_n221_ & ~new_n248_;
  assign new_n250_ = \dest_y[15]  & ~new_n221_;
  assign new_n251_ = ~\dest_y[15]  & new_n221_;
  assign new_n252_ = ~new_n250_ & ~new_n251_;
  assign new_n253_ = \dest_y[16]  & new_n222_;
  assign new_n254_ = ~new_n223_ & ~new_n253_;
  assign new_n255_ = ~\dest_y[17]  & new_n223_;
  assign new_n256_ = ~new_n224_ & ~new_n255_;
  assign new_n257_ = \dest_y[18]  & new_n224_;
  assign new_n258_ = ~new_n225_ & ~new_n257_;
  assign new_n259_ = ~\dest_y[19]  & new_n225_;
  assign new_n260_ = ~new_n226_ & ~new_n259_;
  assign new_n261_ = \dest_y[20]  & ~new_n226_;
  assign new_n262_ = ~\dest_y[20]  & new_n226_;
  assign new_n263_ = ~new_n261_ & ~new_n262_;
  assign new_n264_ = \dest_y[21]  & new_n227_;
  assign new_n265_ = ~new_n228_ & ~new_n264_;
  assign new_n266_ = \dest_y[22]  & ~new_n228_;
  assign new_n267_ = ~new_n229_ & ~new_n266_;
  assign new_n268_ = ~\dest_y[23]  & new_n229_;
  assign new_n269_ = ~new_n230_ & ~new_n268_;
  assign new_n270_ = \dest_y[24]  & ~new_n230_;
  assign new_n271_ = ~\dest_y[24]  & new_n230_;
  assign new_n272_ = ~new_n270_ & ~new_n271_;
  assign new_n273_ = \dest_y[25]  & ~new_n231_;
  assign new_n274_ = ~\dest_y[25]  & new_n231_;
  assign new_n275_ = ~new_n273_ & ~new_n274_;
  assign new_n276_ = \dest_y[26]  & new_n232_;
  assign new_n277_ = ~new_n233_ & ~new_n276_;
  assign new_n278_ = ~\dest_y[27]  & new_n233_;
  assign new_n279_ = ~new_n234_ & ~new_n278_;
  assign new_n280_ = \dest_y[28]  & ~new_n234_;
  assign new_n281_ = ~\dest_y[28]  & new_n234_;
  assign new_n282_ = ~new_n280_ & ~new_n281_;
  assign new_n283_ = \dest_y[0]  & ~\dest_y[9] ;
  assign new_n284_ = \dest_y[29]  & new_n283_;
  assign new_n285_ = ~new_n282_ & new_n284_;
  assign new_n286_ = new_n279_ & new_n285_;
  assign new_n287_ = ~new_n277_ & new_n286_;
  assign new_n288_ = ~new_n275_ & new_n287_;
  assign new_n289_ = ~new_n272_ & new_n288_;
  assign new_n290_ = new_n269_ & new_n289_;
  assign new_n291_ = ~new_n267_ & new_n290_;
  assign new_n292_ = ~new_n265_ & new_n291_;
  assign new_n293_ = ~new_n263_ & new_n292_;
  assign new_n294_ = new_n260_ & new_n293_;
  assign new_n295_ = ~new_n258_ & new_n294_;
  assign new_n296_ = new_n256_ & new_n295_;
  assign new_n297_ = ~new_n254_ & new_n296_;
  assign new_n298_ = ~new_n252_ & new_n297_;
  assign new_n299_ = new_n249_ & new_n298_;
  assign new_n300_ = ~new_n247_ & new_n299_;
  assign new_n301_ = ~new_n245_ & new_n300_;
  assign new_n302_ = new_n243_ & new_n301_;
  assign new_n303_ = ~new_n241_ & new_n302_;
  assign new_n304_ = \dest_y[8]  & new_n303_;
  assign new_n305_ = \dest_y[7]  & new_n304_;
  assign new_n306_ = \dest_y[6]  & new_n305_;
  assign new_n307_ = \dest_y[5]  & new_n306_;
  assign new_n308_ = \dest_y[4]  & new_n307_;
  assign new_n309_ = \dest_y[3]  & new_n308_;
  assign new_n310_ = \dest_y[2]  & new_n309_;
  assign new_n311_ = \dest_y[1]  & new_n310_;
  assign new_n312_ = ~\dest_y[1]  & ~\dest_y[2] ;
  assign new_n313_ = ~\dest_y[3]  & new_n312_;
  assign new_n314_ = ~\dest_y[4]  & new_n313_;
  assign new_n315_ = ~\dest_y[5]  & new_n314_;
  assign new_n316_ = ~\dest_y[6]  & new_n315_;
  assign new_n317_ = ~\dest_y[7]  & new_n316_;
  assign new_n318_ = ~\dest_y[8]  & new_n317_;
  assign new_n319_ = new_n241_ & new_n318_;
  assign new_n320_ = ~new_n243_ & new_n319_;
  assign new_n321_ = new_n245_ & new_n320_;
  assign new_n322_ = new_n247_ & new_n321_;
  assign new_n323_ = ~new_n249_ & new_n322_;
  assign new_n324_ = new_n252_ & new_n323_;
  assign new_n325_ = new_n254_ & new_n324_;
  assign new_n326_ = ~new_n256_ & new_n325_;
  assign new_n327_ = new_n258_ & new_n326_;
  assign new_n328_ = ~new_n260_ & new_n327_;
  assign new_n329_ = new_n263_ & new_n328_;
  assign new_n330_ = new_n265_ & new_n329_;
  assign new_n331_ = new_n267_ & new_n330_;
  assign new_n332_ = ~new_n269_ & new_n331_;
  assign new_n333_ = new_n272_ & new_n332_;
  assign new_n334_ = new_n275_ & new_n333_;
  assign new_n335_ = new_n277_ & new_n334_;
  assign new_n336_ = ~new_n279_ & new_n335_;
  assign new_n337_ = new_n282_ & new_n336_;
  assign new_n338_ = \dest_y[9]  & new_n337_;
  assign new_n339_ = new_n236_ & ~new_n338_;
  assign new_n340_ = ~new_n311_ & ~new_n339_;
  assign new_n341_ = ~new_n239_ & new_n340_;
  assign new_n342_ = ~new_n187_ & ~new_n341_;
  assign new_n343_ = ~new_n237_ & new_n342_;
  assign \outport[1]  = ~new_n215_ & ~new_n343_;
  assign new_n345_ = \dest_x[0]  & new_n236_;
  assign new_n346_ = \dest_y[0]  & new_n345_;
  assign new_n347_ = ~new_n339_ & ~new_n346_;
  assign \outport[2]  = ~\outport[0]  & ~new_n347_;
  assign \outport[3]  = 1'b0;
  assign \outport[4]  = 1'b0;
  assign \outport[5]  = 1'b0;
  assign \outport[6]  = 1'b0;
  assign \outport[7]  = 1'b0;
  assign \outport[8]  = 1'b0;
  assign \outport[9]  = 1'b0;
  assign \outport[10]  = 1'b0;
  assign \outport[11]  = 1'b0;
  assign \outport[12]  = 1'b0;
  assign \outport[13]  = 1'b0;
  assign \outport[14]  = 1'b0;
  assign \outport[15]  = 1'b0;
  assign \outport[16]  = 1'b0;
  assign \outport[17]  = 1'b0;
  assign \outport[18]  = 1'b0;
  assign \outport[19]  = 1'b0;
  assign \outport[20]  = 1'b0;
  assign \outport[21]  = 1'b0;
  assign \outport[22]  = 1'b0;
  assign \outport[23]  = 1'b0;
  assign \outport[24]  = 1'b0;
  assign \outport[25]  = 1'b0;
  assign \outport[26]  = 1'b0;
  assign \outport[27]  = 1'b0;
  assign \outport[28]  = 1'b0;
  assign \outport[29]  = 1'b0;
endmodule


