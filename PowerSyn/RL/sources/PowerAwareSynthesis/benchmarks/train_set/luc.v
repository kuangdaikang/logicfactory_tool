// Benchmark "source.pla" written by ABC on Fri Feb 25 15:13:07 2022

module luc  ( 
    v0, v1, v2, v3, v4, v5, v6, v7,
    \v8.0 , \v8.1 , \v8.2 , \v8.3 , \v8.4 , \v8.5 , \v8.6 , \v8.7 , \v8.8 ,
    \v8.9 , \v8.10 , \v8.11 , \v8.12 , \v8.13 , \v8.14 , \v8.15 , \v8.16 ,
    \v8.17 , \v8.18 , \v8.19 , \v8.20 , \v8.21 , \v8.22 , \v8.23 , \v8.24 ,
    \v8.25 , \v8.26   );
  input  v0, v1, v2, v3, v4, v5, v6, v7;
  output \v8.0 , \v8.1 , \v8.2 , \v8.3 , \v8.4 , \v8.5 , \v8.6 , \v8.7 ,
    \v8.8 , \v8.9 , \v8.10 , \v8.11 , \v8.12 , \v8.13 , \v8.14 , \v8.15 ,
    \v8.16 , \v8.17 , \v8.18 , \v8.19 , \v8.20 , \v8.21 , \v8.22 , \v8.23 ,
    \v8.24 , \v8.25 , \v8.26 ;
  wire new_n36_, new_n37_, new_n38_, new_n39_, new_n40_, new_n42_, new_n43_,
    new_n45_, new_n46_, new_n47_, new_n48_, new_n49_, new_n50_, new_n51_,
    new_n52_, new_n53_, new_n54_, new_n55_, new_n56_, new_n57_, new_n59_,
    new_n60_, new_n61_, new_n62_, new_n63_, new_n64_, new_n65_, new_n66_,
    new_n67_, new_n68_, new_n69_, new_n71_, new_n72_, new_n73_, new_n74_,
    new_n75_, new_n76_, new_n77_, new_n78_, new_n79_, new_n80_, new_n81_,
    new_n82_, new_n83_, new_n84_, new_n85_, new_n86_, new_n87_, new_n88_,
    new_n90_, new_n91_, new_n92_, new_n93_, new_n94_, new_n95_, new_n97_,
    new_n98_, new_n99_, new_n100_, new_n101_, new_n102_, new_n103_,
    new_n104_, new_n105_, new_n106_, new_n107_, new_n108_, new_n110_,
    new_n111_, new_n112_, new_n113_, new_n114_, new_n115_, new_n116_,
    new_n118_, new_n119_, new_n120_, new_n121_, new_n122_, new_n123_,
    new_n124_, new_n125_, new_n126_, new_n127_, new_n128_, new_n129_,
    new_n130_, new_n131_, new_n132_, new_n133_, new_n134_, new_n135_,
    new_n136_, new_n137_, new_n138_, new_n139_, new_n140_, new_n141_,
    new_n142_, new_n143_, new_n145_, new_n146_, new_n147_, new_n148_,
    new_n149_, new_n150_, new_n151_, new_n152_, new_n153_, new_n154_,
    new_n155_, new_n156_, new_n157_, new_n158_, new_n159_, new_n161_,
    new_n162_, new_n163_, new_n165_, new_n166_, new_n167_, new_n168_,
    new_n169_, new_n170_, new_n171_, new_n172_, new_n173_, new_n174_,
    new_n175_, new_n176_, new_n178_, new_n179_, new_n180_, new_n181_,
    new_n182_, new_n183_, new_n184_, new_n185_, new_n186_, new_n187_,
    new_n188_, new_n189_, new_n190_, new_n192_, new_n193_, new_n194_,
    new_n195_, new_n196_, new_n197_, new_n198_, new_n199_, new_n200_,
    new_n201_, new_n202_, new_n203_, new_n204_, new_n205_, new_n206_,
    new_n208_, new_n209_, new_n210_, new_n211_, new_n212_, new_n213_,
    new_n214_, new_n215_, new_n216_, new_n217_, new_n218_, new_n219_,
    new_n220_, new_n221_, new_n222_, new_n224_, new_n225_, new_n226_,
    new_n227_, new_n228_, new_n229_, new_n230_, new_n231_, new_n232_,
    new_n234_, new_n235_, new_n236_, new_n237_, new_n238_, new_n239_,
    new_n240_, new_n241_, new_n242_, new_n244_, new_n245_, new_n246_,
    new_n248_, new_n249_, new_n250_, new_n251_, new_n252_, new_n253_,
    new_n254_, new_n255_, new_n256_, new_n257_, new_n258_, new_n259_,
    new_n260_, new_n261_, new_n262_, new_n263_, new_n264_, new_n266_,
    new_n267_, new_n268_, new_n269_, new_n270_, new_n271_, new_n272_,
    new_n273_, new_n274_, new_n275_, new_n276_, new_n277_, new_n278_,
    new_n279_, new_n280_, new_n281_, new_n282_, new_n283_, new_n285_,
    new_n286_, new_n287_, new_n288_, new_n289_, new_n290_, new_n291_,
    new_n292_, new_n293_, new_n294_, new_n295_, new_n296_, new_n297_,
    new_n299_, new_n300_, new_n301_, new_n303_, new_n304_, new_n305_,
    new_n306_, new_n307_, new_n308_, new_n309_, new_n313_, new_n314_,
    new_n315_, new_n316_, new_n317_, new_n318_, new_n319_, new_n320_,
    new_n321_, new_n322_, new_n323_, new_n324_, new_n325_, new_n326_,
    new_n327_, new_n328_, new_n329_, new_n330_, new_n331_, new_n332_;
  assign new_n36_ = v0 & v1;
  assign new_n37_ = v2 & new_n36_;
  assign new_n38_ = ~v3 & new_n37_;
  assign new_n39_ = v4 & new_n38_;
  assign new_n40_ = v5 & new_n39_;
  assign \v8.0  = v6 & new_n40_;
  assign new_n42_ = ~v2 & new_n36_;
  assign new_n43_ = ~v3 & new_n42_;
  assign \v8.1  = v4 & new_n43_;
  assign new_n45_ = v4 & v5;
  assign new_n46_ = v2 & new_n45_;
  assign new_n47_ = v0 & new_n46_;
  assign new_n48_ = ~v0 & ~v2;
  assign new_n49_ = ~new_n47_ & ~new_n48_;
  assign new_n50_ = ~v3 & ~new_n49_;
  assign new_n51_ = v1 & new_n50_;
  assign new_n52_ = ~v1 & ~v2;
  assign new_n53_ = ~v0 & new_n52_;
  assign new_n54_ = ~v4 & v5;
  assign new_n55_ = v3 & new_n54_;
  assign new_n56_ = new_n53_ & new_n55_;
  assign new_n57_ = v5 & ~new_n56_;
  assign \v8.2  = new_n51_ | ~new_n57_;
  assign new_n59_ = ~v3 & v4;
  assign new_n60_ = v2 & new_n59_;
  assign new_n61_ = ~v2 & v3;
  assign new_n62_ = new_n54_ & new_n61_;
  assign new_n63_ = ~new_n60_ & ~new_n62_;
  assign new_n64_ = ~v1 & ~new_n63_;
  assign new_n65_ = ~v2 & ~v3;
  assign new_n66_ = v1 & new_n65_;
  assign new_n67_ = ~new_n64_ & ~new_n66_;
  assign new_n68_ = ~v0 & ~new_n67_;
  assign new_n69_ = v5 & ~new_n45_;
  assign \v8.3  = new_n68_ | ~new_n69_;
  assign new_n71_ = v2 & v4;
  assign new_n72_ = ~v4 & ~v5;
  assign new_n73_ = ~v2 & new_n72_;
  assign new_n74_ = ~new_n71_ & ~new_n73_;
  assign new_n75_ = ~v0 & ~new_n74_;
  assign new_n76_ = ~v2 & ~v4;
  assign new_n77_ = v0 & new_n76_;
  assign new_n78_ = ~new_n75_ & ~new_n77_;
  assign new_n79_ = ~v1 & ~new_n78_;
  assign new_n80_ = ~new_n46_ & ~new_n76_;
  assign new_n81_ = v1 & ~new_n80_;
  assign new_n82_ = v0 & new_n81_;
  assign new_n83_ = ~new_n79_ & ~new_n82_;
  assign new_n84_ = ~v3 & ~new_n83_;
  assign new_n85_ = ~v0 & ~v1;
  assign new_n86_ = v3 & v4;
  assign new_n87_ = ~v2 & new_n86_;
  assign new_n88_ = new_n85_ & new_n87_;
  assign \v8.4  = new_n84_ | new_n88_;
  assign new_n90_ = ~v0 & new_n64_;
  assign new_n91_ = ~v3 & new_n45_;
  assign new_n92_ = v2 & new_n91_;
  assign new_n93_ = ~new_n61_ & ~new_n92_;
  assign new_n94_ = v1 & ~new_n93_;
  assign new_n95_ = v0 & new_n94_;
  assign \v8.5  = new_n90_ | new_n95_;
  assign new_n97_ = v2 & v3;
  assign new_n98_ = ~v1 & new_n97_;
  assign new_n99_ = ~new_n66_ & ~new_n98_;
  assign new_n100_ = ~v0 & ~new_n99_;
  assign new_n101_ = v2 & v5;
  assign new_n102_ = v2 & ~new_n101_;
  assign new_n103_ = v4 & ~new_n102_;
  assign new_n104_ = ~new_n76_ & ~new_n103_;
  assign new_n105_ = ~v3 & ~new_n104_;
  assign new_n106_ = ~new_n61_ & ~new_n105_;
  assign new_n107_ = v1 & ~new_n106_;
  assign new_n108_ = v0 & new_n107_;
  assign \v8.6  = new_n100_ | new_n108_;
  assign new_n110_ = ~v3 & ~new_n105_;
  assign new_n111_ = v1 & ~new_n110_;
  assign new_n112_ = ~v1 & new_n65_;
  assign new_n113_ = ~new_n111_ & ~new_n112_;
  assign new_n114_ = v0 & ~new_n113_;
  assign new_n115_ = ~v0 & v1;
  assign new_n116_ = new_n65_ & new_n115_;
  assign \v8.7  = new_n114_ | new_n116_;
  assign new_n118_ = ~v3 & ~v4;
  assign new_n119_ = ~v3 & ~new_n118_;
  assign new_n120_ = ~new_n59_ & new_n119_;
  assign new_n121_ = v1 & ~new_n120_;
  assign new_n122_ = v3 & v7;
  assign new_n123_ = v3 & ~new_n122_;
  assign new_n124_ = ~v1 & ~new_n123_;
  assign new_n125_ = ~new_n121_ & ~new_n124_;
  assign new_n126_ = v0 & ~new_n125_;
  assign new_n127_ = ~v4 & ~new_n54_;
  assign new_n128_ = v3 & ~new_n127_;
  assign new_n129_ = ~new_n91_ & ~new_n128_;
  assign new_n130_ = ~v1 & ~new_n129_;
  assign new_n131_ = v1 & ~v3;
  assign new_n132_ = ~new_n130_ & ~new_n131_;
  assign new_n133_ = ~v0 & ~new_n132_;
  assign new_n134_ = ~new_n126_ & ~new_n133_;
  assign new_n135_ = ~v2 & ~new_n134_;
  assign new_n136_ = ~v3 & ~new_n59_;
  assign new_n137_ = ~v1 & ~new_n136_;
  assign new_n138_ = ~v0 & new_n137_;
  assign new_n139_ = ~v3 & ~new_n91_;
  assign new_n140_ = v1 & ~new_n139_;
  assign new_n141_ = v0 & new_n140_;
  assign new_n142_ = ~new_n138_ & ~new_n141_;
  assign new_n143_ = v2 & ~new_n142_;
  assign \v8.8  = new_n135_ | new_n143_;
  assign new_n145_ = v3 & ~new_n128_;
  assign new_n146_ = ~v1 & ~new_n145_;
  assign new_n147_ = ~new_n131_ & ~new_n146_;
  assign new_n148_ = ~v0 & ~new_n147_;
  assign new_n149_ = ~new_n126_ & ~new_n148_;
  assign new_n150_ = ~v2 & ~new_n149_;
  assign new_n151_ = v1 & v5;
  assign new_n152_ = v0 & new_n151_;
  assign new_n153_ = ~new_n85_ & ~new_n152_;
  assign new_n154_ = v4 & ~new_n153_;
  assign new_n155_ = ~v3 & new_n154_;
  assign new_n156_ = ~v1 & v3;
  assign new_n157_ = ~v0 & new_n156_;
  assign new_n158_ = ~new_n155_ & ~new_n157_;
  assign new_n159_ = v2 & ~new_n158_;
  assign \v8.9  = new_n150_ | new_n159_;
  assign new_n161_ = v2 & ~new_n139_;
  assign new_n162_ = v1 & new_n161_;
  assign new_n163_ = v0 & new_n162_;
  assign \v8.10  = new_n150_ | new_n163_;
  assign new_n165_ = v2 & ~new_n136_;
  assign new_n166_ = ~v2 & ~new_n145_;
  assign new_n167_ = ~new_n165_ & ~new_n166_;
  assign new_n168_ = ~v0 & ~new_n167_;
  assign new_n169_ = ~v2 & ~new_n123_;
  assign new_n170_ = v0 & new_n169_;
  assign new_n171_ = ~new_n168_ & ~new_n170_;
  assign new_n172_ = ~v1 & ~new_n171_;
  assign new_n173_ = v0 & new_n161_;
  assign new_n174_ = ~v0 & new_n65_;
  assign new_n175_ = ~new_n173_ & ~new_n174_;
  assign new_n176_ = v1 & ~new_n175_;
  assign \v8.11  = new_n172_ | new_n176_;
  assign new_n178_ = v0 & ~v4;
  assign new_n179_ = ~v4 & ~new_n178_;
  assign new_n180_ = ~v1 & ~new_n179_;
  assign new_n181_ = ~v1 & ~new_n180_;
  assign new_n182_ = ~v3 & ~new_n181_;
  assign new_n183_ = ~v0 & new_n54_;
  assign new_n184_ = v0 & v7;
  assign new_n185_ = ~new_n183_ & ~new_n184_;
  assign new_n186_ = ~v1 & ~new_n185_;
  assign new_n187_ = ~new_n36_ & ~new_n186_;
  assign new_n188_ = v3 & ~new_n187_;
  assign new_n189_ = ~new_n182_ & ~new_n188_;
  assign new_n190_ = ~v2 & ~new_n189_;
  assign \v8.12  = new_n143_ | new_n190_;
  assign new_n192_ = v0 & v5;
  assign new_n193_ = ~v0 & ~v5;
  assign new_n194_ = ~new_n192_ & ~new_n193_;
  assign new_n195_ = v4 & ~new_n194_;
  assign new_n196_ = ~v0 & ~v4;
  assign new_n197_ = ~new_n195_ & ~new_n196_;
  assign new_n198_ = ~v1 & ~new_n197_;
  assign new_n199_ = ~v1 & ~new_n198_;
  assign new_n200_ = ~v3 & ~new_n199_;
  assign new_n201_ = ~v1 & ~new_n127_;
  assign new_n202_ = ~v0 & new_n201_;
  assign new_n203_ = ~new_n36_ & ~new_n202_;
  assign new_n204_ = v3 & ~new_n203_;
  assign new_n205_ = ~new_n200_ & ~new_n204_;
  assign new_n206_ = ~v2 & ~new_n205_;
  assign \v8.13  = new_n143_ | new_n206_;
  assign new_n208_ = v1 & ~v4;
  assign new_n209_ = ~v4 & ~new_n208_;
  assign new_n210_ = ~v3 & ~new_n209_;
  assign new_n211_ = v1 & v3;
  assign new_n212_ = ~new_n210_ & ~new_n211_;
  assign new_n213_ = v0 & ~new_n212_;
  assign new_n214_ = v4 & ~v5;
  assign new_n215_ = v4 & ~new_n214_;
  assign new_n216_ = ~v3 & ~new_n215_;
  assign new_n217_ = ~new_n128_ & ~new_n216_;
  assign new_n218_ = ~v1 & ~new_n217_;
  assign new_n219_ = ~new_n131_ & ~new_n218_;
  assign new_n220_ = ~v0 & ~new_n219_;
  assign new_n221_ = ~new_n213_ & ~new_n220_;
  assign new_n222_ = ~v2 & ~new_n221_;
  assign \v8.14  = new_n143_ | new_n222_;
  assign new_n224_ = ~v3 & new_n72_;
  assign new_n225_ = ~new_n86_ & ~new_n224_;
  assign new_n226_ = ~v1 & ~new_n225_;
  assign new_n227_ = ~v0 & new_n226_;
  assign new_n228_ = v1 & ~new_n119_;
  assign new_n229_ = v0 & new_n228_;
  assign new_n230_ = ~new_n227_ & ~new_n229_;
  assign new_n231_ = ~v2 & ~new_n230_;
  assign new_n232_ = new_n85_ & new_n97_;
  assign \v8.15  = new_n231_ | new_n232_;
  assign new_n234_ = ~v2 & new_n59_;
  assign new_n235_ = ~new_n97_ & ~new_n234_;
  assign new_n236_ = v1 & ~new_n235_;
  assign new_n237_ = new_n52_ & new_n91_;
  assign new_n238_ = ~new_n236_ & ~new_n237_;
  assign new_n239_ = v0 & ~new_n238_;
  assign new_n240_ = ~v2 & ~new_n217_;
  assign new_n241_ = ~v1 & new_n240_;
  assign new_n242_ = ~v0 & new_n241_;
  assign \v8.16  = new_n239_ | new_n242_;
  assign new_n244_ = v0 & new_n121_;
  assign new_n245_ = ~new_n220_ & ~new_n244_;
  assign new_n246_ = ~v2 & ~new_n245_;
  assign \v8.18  = new_n159_ | new_n246_;
  assign new_n248_ = ~new_n118_ & ~new_n122_;
  assign new_n249_ = ~v1 & ~new_n248_;
  assign new_n250_ = v6 & ~v7;
  assign new_n251_ = v6 & ~new_n250_;
  assign new_n252_ = ~new_n119_ & ~new_n251_;
  assign new_n253_ = ~new_n59_ & ~new_n252_;
  assign new_n254_ = v1 & ~new_n253_;
  assign new_n255_ = ~new_n249_ & ~new_n254_;
  assign new_n256_ = ~v2 & ~new_n255_;
  assign new_n257_ = v1 & new_n92_;
  assign new_n258_ = ~new_n256_ & ~new_n257_;
  assign new_n259_ = v0 & ~new_n258_;
  assign new_n260_ = new_n45_ & new_n65_;
  assign new_n261_ = ~new_n97_ & ~new_n260_;
  assign new_n262_ = ~v1 & ~new_n261_;
  assign new_n263_ = ~new_n66_ & ~new_n262_;
  assign new_n264_ = ~v0 & ~new_n263_;
  assign \v8.19  = new_n259_ | new_n264_;
  assign new_n266_ = v6 & v7;
  assign new_n267_ = v6 & ~new_n266_;
  assign new_n268_ = v3 & ~new_n267_;
  assign new_n269_ = v1 & new_n268_;
  assign new_n270_ = ~new_n210_ & ~new_n269_;
  assign new_n271_ = v0 & ~new_n270_;
  assign new_n272_ = ~v0 & new_n146_;
  assign new_n273_ = ~new_n271_ & ~new_n272_;
  assign new_n274_ = ~v2 & ~new_n273_;
  assign new_n275_ = v5 & ~new_n251_;
  assign new_n276_ = v4 & new_n275_;
  assign new_n277_ = ~v3 & new_n276_;
  assign new_n278_ = ~v3 & ~new_n277_;
  assign new_n279_ = v1 & ~new_n278_;
  assign new_n280_ = v0 & new_n279_;
  assign new_n281_ = new_n59_ & new_n85_;
  assign new_n282_ = ~new_n280_ & ~new_n281_;
  assign new_n283_ = v2 & ~new_n282_;
  assign \v8.20  = new_n274_ | new_n283_;
  assign new_n285_ = v1 & v4;
  assign new_n286_ = ~v1 & ~v4;
  assign new_n287_ = ~new_n285_ & ~new_n286_;
  assign new_n288_ = v0 & ~new_n287_;
  assign new_n289_ = ~v1 & new_n45_;
  assign new_n290_ = ~v1 & ~new_n289_;
  assign new_n291_ = ~v0 & ~new_n290_;
  assign new_n292_ = ~new_n288_ & ~new_n291_;
  assign new_n293_ = ~v3 & ~new_n292_;
  assign new_n294_ = v0 & ~v1;
  assign new_n295_ = new_n122_ & new_n294_;
  assign new_n296_ = ~new_n293_ & ~new_n295_;
  assign new_n297_ = ~v2 & ~new_n296_;
  assign \v8.21  = new_n232_ | new_n297_;
  assign new_n299_ = v1 & new_n97_;
  assign new_n300_ = ~new_n237_ & ~new_n299_;
  assign new_n301_ = v0 & ~new_n300_;
  assign \v8.22  = new_n242_ | new_n301_;
  assign new_n303_ = ~v7 & ~new_n119_;
  assign new_n304_ = ~v2 & new_n303_;
  assign new_n305_ = v2 & ~v3;
  assign new_n306_ = new_n45_ & new_n305_;
  assign new_n307_ = ~new_n304_ & ~new_n306_;
  assign new_n308_ = v6 & ~new_n307_;
  assign new_n309_ = v1 & new_n308_;
  assign \v8.23  = v0 & new_n309_;
  assign \v8.24  = v0 & new_n66_;
  assign \v8.25  = ~v7 & \v8.0 ;
  assign new_n313_ = v1 & ~v6;
  assign new_n314_ = ~v1 & v7;
  assign new_n315_ = ~new_n313_ & ~new_n314_;
  assign new_n316_ = v3 & ~new_n315_;
  assign new_n317_ = ~v4 & ~v6;
  assign new_n318_ = ~v4 & ~new_n317_;
  assign new_n319_ = v1 & ~new_n318_;
  assign new_n320_ = v1 & ~new_n319_;
  assign new_n321_ = ~v3 & ~new_n320_;
  assign new_n322_ = ~new_n316_ & ~new_n321_;
  assign new_n323_ = v0 & ~new_n322_;
  assign new_n324_ = ~new_n148_ & ~new_n323_;
  assign new_n325_ = ~v2 & ~new_n324_;
  assign new_n326_ = v5 & ~v6;
  assign new_n327_ = new_n59_ & new_n326_;
  assign new_n328_ = ~v3 & ~new_n327_;
  assign new_n329_ = v1 & ~new_n328_;
  assign new_n330_ = v0 & new_n329_;
  assign new_n331_ = ~new_n138_ & ~new_n330_;
  assign new_n332_ = v2 & ~new_n331_;
  assign \v8.26  = new_n325_ | new_n332_;
  assign \v8.17  = \v8.13 ;
endmodule


