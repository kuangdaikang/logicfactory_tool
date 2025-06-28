// Benchmark "source.pla" written by ABC on Fri Feb 25 15:13:07 2022

module br2  ( 
    v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11,
    \v12.0 , \v12.1 , \v12.2 , \v12.3 , \v12.4 , \v12.5 , \v12.6 , \v12.7   );
  input  v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11;
  output \v12.0 , \v12.1 , \v12.2 , \v12.3 , \v12.4 , \v12.5 , \v12.6 ,
    \v12.7 ;
  wire new_n21_, new_n22_, new_n23_, new_n24_, new_n25_, new_n26_, new_n27_,
    new_n28_, new_n29_, new_n30_, new_n31_, new_n32_, new_n33_, new_n34_,
    new_n35_, new_n36_, new_n37_, new_n38_, new_n39_, new_n40_, new_n41_,
    new_n42_, new_n43_, new_n44_, new_n45_, new_n46_, new_n47_, new_n48_,
    new_n49_, new_n50_, new_n51_, new_n52_, new_n53_, new_n54_, new_n55_,
    new_n57_, new_n58_, new_n59_, new_n60_, new_n61_, new_n62_, new_n63_,
    new_n64_, new_n65_, new_n66_, new_n67_, new_n68_, new_n69_, new_n70_,
    new_n71_, new_n72_, new_n74_, new_n75_, new_n76_, new_n77_, new_n78_,
    new_n79_, new_n80_, new_n81_, new_n82_, new_n83_, new_n84_, new_n85_,
    new_n86_, new_n88_, new_n89_, new_n90_, new_n91_, new_n92_, new_n93_,
    new_n94_, new_n95_, new_n96_, new_n97_, new_n99_, new_n100_, new_n101_,
    new_n102_, new_n103_, new_n104_, new_n105_, new_n106_, new_n107_,
    new_n108_, new_n109_, new_n110_, new_n111_, new_n112_, new_n113_,
    new_n114_, new_n115_, new_n116_, new_n117_, new_n118_, new_n119_,
    new_n120_, new_n121_, new_n122_, new_n123_, new_n124_, new_n125_,
    new_n126_, new_n127_, new_n128_, new_n129_, new_n130_, new_n131_,
    new_n132_, new_n134_, new_n135_, new_n136_, new_n137_, new_n138_,
    new_n139_, new_n140_, new_n141_, new_n142_, new_n143_, new_n144_,
    new_n145_, new_n146_, new_n147_, new_n148_, new_n149_, new_n150_,
    new_n151_, new_n152_, new_n153_, new_n154_, new_n155_, new_n156_,
    new_n157_, new_n158_, new_n159_, new_n160_, new_n161_, new_n162_,
    new_n163_, new_n164_, new_n165_, new_n166_, new_n167_, new_n169_,
    new_n170_, new_n171_, new_n172_, new_n173_, new_n174_, new_n175_,
    new_n176_, new_n177_, new_n178_, new_n179_, new_n180_, new_n181_,
    new_n182_, new_n183_, new_n184_, new_n185_, new_n186_, new_n187_,
    new_n188_, new_n189_, new_n190_, new_n191_, new_n192_, new_n194_,
    new_n195_, new_n196_, new_n197_, new_n198_, new_n199_, new_n200_,
    new_n201_, new_n202_, new_n203_, new_n204_, new_n205_, new_n206_;
  assign new_n21_ = v5 & v8;
  assign new_n22_ = ~v4 & new_n21_;
  assign new_n23_ = ~v5 & ~v8;
  assign new_n24_ = v4 & new_n23_;
  assign new_n25_ = ~new_n22_ & ~new_n24_;
  assign new_n26_ = v3 & ~new_n25_;
  assign new_n27_ = ~v3 & ~v4;
  assign new_n28_ = new_n21_ & new_n27_;
  assign new_n29_ = ~new_n26_ & ~new_n28_;
  assign new_n30_ = v6 & ~new_n29_;
  assign new_n31_ = v4 & v5;
  assign new_n32_ = v3 & new_n31_;
  assign new_n33_ = v8 & ~v10;
  assign new_n34_ = ~v6 & new_n33_;
  assign new_n35_ = new_n32_ & new_n34_;
  assign new_n36_ = ~new_n30_ & ~new_n35_;
  assign new_n37_ = ~v6 & v10;
  assign new_n38_ = ~v6 & ~new_n37_;
  assign new_n39_ = ~v11 & ~new_n38_;
  assign new_n40_ = v8 & new_n39_;
  assign new_n41_ = v5 & new_n40_;
  assign new_n42_ = v4 & new_n41_;
  assign new_n43_ = v3 & new_n42_;
  assign new_n44_ = new_n36_ & ~new_n43_;
  assign new_n45_ = v7 & ~new_n44_;
  assign new_n46_ = v8 & ~v11;
  assign new_n47_ = ~v7 & new_n46_;
  assign new_n48_ = ~v6 & new_n47_;
  assign new_n49_ = v5 & new_n48_;
  assign new_n50_ = ~new_n45_ & ~new_n49_;
  assign new_n51_ = v2 & ~new_n50_;
  assign new_n52_ = ~v2 & new_n49_;
  assign new_n53_ = ~new_n51_ & ~new_n52_;
  assign new_n54_ = v9 & ~new_n53_;
  assign new_n55_ = ~v1 & new_n54_;
  assign \v12.0  = v0 & new_n55_;
  assign new_n57_ = v2 & v3;
  assign new_n58_ = v4 & v7;
  assign new_n59_ = new_n57_ & new_n58_;
  assign new_n60_ = v7 & ~new_n59_;
  assign new_n61_ = ~v6 & ~new_n60_;
  assign new_n62_ = v3 & v4;
  assign new_n63_ = v2 & new_n62_;
  assign new_n64_ = v7 & v10;
  assign new_n65_ = v6 & new_n64_;
  assign new_n66_ = new_n63_ & new_n65_;
  assign new_n67_ = ~new_n61_ & ~new_n66_;
  assign new_n68_ = ~v11 & ~new_n67_;
  assign new_n69_ = v9 & new_n68_;
  assign new_n70_ = v8 & new_n69_;
  assign new_n71_ = v5 & new_n70_;
  assign new_n72_ = ~v1 & new_n71_;
  assign \v12.1  = v0 & new_n72_;
  assign new_n74_ = ~v8 & ~v9;
  assign new_n75_ = v6 & new_n74_;
  assign new_n76_ = ~v6 & v8;
  assign new_n77_ = v9 & v11;
  assign new_n78_ = new_n76_ & new_n77_;
  assign new_n79_ = ~new_n75_ & ~new_n78_;
  assign new_n80_ = ~v10 & ~new_n79_;
  assign new_n81_ = v7 & new_n80_;
  assign new_n82_ = v5 & new_n81_;
  assign new_n83_ = v4 & new_n82_;
  assign new_n84_ = v3 & new_n83_;
  assign new_n85_ = v2 & new_n84_;
  assign new_n86_ = ~v1 & new_n85_;
  assign \v12.2  = v0 & new_n86_;
  assign new_n88_ = v0 & ~v1;
  assign new_n89_ = v2 & new_n88_;
  assign new_n90_ = v3 & new_n89_;
  assign new_n91_ = v4 & new_n90_;
  assign new_n92_ = v5 & new_n91_;
  assign new_n93_ = ~v6 & new_n92_;
  assign new_n94_ = v7 & new_n93_;
  assign new_n95_ = v8 & new_n94_;
  assign new_n96_ = v9 & new_n95_;
  assign new_n97_ = ~v10 & new_n96_;
  assign \v12.3  = v11 & new_n97_;
  assign new_n99_ = ~v6 & new_n46_;
  assign new_n100_ = new_n32_ & new_n99_;
  assign new_n101_ = ~new_n30_ & ~new_n100_;
  assign new_n102_ = v7 & ~new_n101_;
  assign new_n103_ = ~new_n49_ & ~new_n102_;
  assign new_n104_ = v2 & ~new_n103_;
  assign new_n105_ = ~v2 & v3;
  assign new_n106_ = new_n31_ & new_n105_;
  assign new_n107_ = ~v6 & ~v7;
  assign new_n108_ = new_n46_ & new_n107_;
  assign new_n109_ = new_n106_ & new_n108_;
  assign new_n110_ = ~new_n104_ & ~new_n109_;
  assign new_n111_ = ~v6 & v11;
  assign new_n112_ = v6 & ~v11;
  assign new_n113_ = ~new_n111_ & ~new_n112_;
  assign new_n114_ = ~v10 & ~new_n113_;
  assign new_n115_ = v8 & new_n114_;
  assign new_n116_ = v7 & new_n115_;
  assign new_n117_ = v5 & new_n116_;
  assign new_n118_ = v4 & new_n117_;
  assign new_n119_ = v3 & new_n118_;
  assign new_n120_ = v2 & new_n119_;
  assign new_n121_ = new_n110_ & ~new_n120_;
  assign new_n122_ = v9 & ~new_n121_;
  assign new_n123_ = ~v9 & ~v10;
  assign new_n124_ = ~v8 & new_n123_;
  assign new_n125_ = v7 & new_n124_;
  assign new_n126_ = v6 & new_n125_;
  assign new_n127_ = v5 & new_n126_;
  assign new_n128_ = v4 & new_n127_;
  assign new_n129_ = v3 & new_n128_;
  assign new_n130_ = v2 & new_n129_;
  assign new_n131_ = ~new_n122_ & ~new_n130_;
  assign new_n132_ = ~v1 & ~new_n131_;
  assign \v12.4  = v0 & new_n132_;
  assign new_n134_ = ~v4 & v5;
  assign new_n135_ = ~v3 & new_n134_;
  assign new_n136_ = ~v7 & v8;
  assign new_n137_ = ~v6 & new_n136_;
  assign new_n138_ = new_n135_ & new_n137_;
  assign new_n139_ = v4 & ~v5;
  assign new_n140_ = v3 & new_n139_;
  assign new_n141_ = v7 & ~v8;
  assign new_n142_ = v6 & new_n141_;
  assign new_n143_ = new_n140_ & new_n142_;
  assign new_n144_ = ~new_n138_ & ~new_n143_;
  assign new_n145_ = v2 & ~new_n144_;
  assign new_n146_ = ~new_n27_ & ~new_n62_;
  assign new_n147_ = v8 & ~new_n146_;
  assign new_n148_ = ~v7 & new_n147_;
  assign new_n149_ = ~v6 & new_n148_;
  assign new_n150_ = v5 & new_n149_;
  assign new_n151_ = ~v2 & new_n150_;
  assign new_n152_ = ~new_n145_ & ~new_n151_;
  assign new_n153_ = ~v11 & ~new_n152_;
  assign new_n154_ = new_n57_ & new_n139_;
  assign new_n155_ = v6 & v7;
  assign new_n156_ = ~v8 & v11;
  assign new_n157_ = new_n155_ & new_n156_;
  assign new_n158_ = new_n154_ & new_n157_;
  assign new_n159_ = ~new_n153_ & ~new_n158_;
  assign new_n160_ = new_n31_ & new_n57_;
  assign new_n161_ = v10 & ~v11;
  assign new_n162_ = v8 & new_n161_;
  assign new_n163_ = new_n155_ & new_n162_;
  assign new_n164_ = new_n160_ & new_n163_;
  assign new_n165_ = new_n159_ & ~new_n164_;
  assign new_n166_ = v9 & ~new_n165_;
  assign new_n167_ = ~v1 & new_n166_;
  assign \v12.5  = v0 & new_n167_;
  assign new_n169_ = ~v3 & v5;
  assign new_n170_ = new_n137_ & new_n169_;
  assign new_n171_ = v3 & ~v5;
  assign new_n172_ = new_n142_ & new_n171_;
  assign new_n173_ = ~new_n170_ & ~new_n172_;
  assign new_n174_ = v2 & ~new_n173_;
  assign new_n175_ = v5 & new_n137_;
  assign new_n176_ = ~v2 & new_n175_;
  assign new_n177_ = ~new_n174_ & ~new_n176_;
  assign new_n178_ = ~v11 & ~new_n177_;
  assign new_n179_ = v2 & new_n171_;
  assign new_n180_ = new_n157_ & new_n179_;
  assign new_n181_ = ~new_n178_ & ~new_n180_;
  assign new_n182_ = v4 & ~new_n181_;
  assign new_n183_ = v7 & v8;
  assign new_n184_ = v6 & new_n183_;
  assign new_n185_ = v5 & new_n184_;
  assign new_n186_ = ~v4 & new_n185_;
  assign new_n187_ = ~v3 & new_n186_;
  assign new_n188_ = v2 & new_n187_;
  assign new_n189_ = ~new_n182_ & ~new_n188_;
  assign new_n190_ = ~new_n164_ & new_n189_;
  assign new_n191_ = v9 & ~new_n190_;
  assign new_n192_ = ~v1 & new_n191_;
  assign \v12.6  = v0 & new_n192_;
  assign new_n194_ = v2 & ~v3;
  assign new_n195_ = v2 & ~new_n194_;
  assign new_n196_ = v3 & ~v4;
  assign new_n197_ = v2 & new_n196_;
  assign new_n198_ = new_n195_ & ~new_n197_;
  assign new_n199_ = ~v7 & ~new_n198_;
  assign new_n200_ = ~v6 & new_n199_;
  assign new_n201_ = ~new_n66_ & ~new_n200_;
  assign new_n202_ = ~v11 & ~new_n201_;
  assign new_n203_ = v9 & new_n202_;
  assign new_n204_ = v8 & new_n203_;
  assign new_n205_ = v5 & new_n204_;
  assign new_n206_ = ~v1 & new_n205_;
  assign \v12.7  = v0 & new_n206_;
endmodule


