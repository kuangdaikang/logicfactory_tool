// Benchmark "c8" written by ABC on Fri Feb 25 15:12:26 2022

module c8 ( 
    a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, u, v, w, x, y,
    z, a0, b0, c0,
    d0, e0, f0, g0, h0, i0, j0, k0, l0, m0, n0, o0, p0, q0, r0, s0, t0, u0  );
  input  a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, u, v,
    w, x, y, z, a0, b0, c0;
  output d0, e0, f0, g0, h0, i0, j0, k0, l0, m0, n0, o0, p0, q0, r0, s0, t0,
    u0;
  wire new_n47_, new_n48_, new_n49_, new_n51_, new_n52_, new_n53_, new_n55_,
    new_n56_, new_n57_, new_n59_, new_n60_, new_n61_, new_n63_, new_n64_,
    new_n65_, new_n67_, new_n68_, new_n69_, new_n71_, new_n72_, new_n73_,
    new_n75_, new_n76_, new_n77_, new_n79_, new_n80_, new_n81_, new_n82_,
    new_n83_, new_n84_, new_n85_, new_n86_, new_n87_, new_n88_, new_n89_,
    new_n91_, new_n92_, new_n93_, new_n94_, new_n95_, new_n96_, new_n97_,
    new_n98_, new_n99_, new_n100_, new_n102_, new_n103_, new_n104_,
    new_n105_, new_n106_, new_n107_, new_n108_, new_n109_, new_n110_,
    new_n111_, new_n112_, new_n113_, new_n114_, new_n116_, new_n117_,
    new_n118_, new_n119_, new_n120_, new_n121_, new_n122_, new_n123_,
    new_n124_, new_n125_, new_n126_, new_n127_, new_n128_, new_n129_,
    new_n131_, new_n132_, new_n133_, new_n134_, new_n135_, new_n136_,
    new_n137_, new_n138_, new_n139_, new_n140_, new_n141_, new_n142_,
    new_n143_, new_n144_, new_n145_, new_n146_, new_n148_, new_n149_,
    new_n150_, new_n151_, new_n152_, new_n153_, new_n154_, new_n155_,
    new_n156_, new_n157_, new_n158_, new_n159_, new_n160_, new_n161_,
    new_n162_, new_n163_, new_n164_, new_n166_, new_n167_, new_n168_,
    new_n169_, new_n170_, new_n171_, new_n172_, new_n173_, new_n174_,
    new_n175_, new_n176_, new_n177_, new_n178_, new_n179_, new_n180_,
    new_n181_, new_n182_, new_n183_, new_n184_, new_n186_, new_n187_,
    new_n188_, new_n189_, new_n190_, new_n191_, new_n192_, new_n193_,
    new_n194_, new_n195_, new_n196_, new_n197_, new_n198_, new_n199_,
    new_n200_, new_n201_, new_n202_, new_n203_, new_n204_, new_n205_,
    new_n207_, new_n208_, new_n209_, new_n210_, new_n211_, new_n212_,
    new_n213_, new_n214_;
  assign new_n47_ = u & ~c0;
  assign new_n48_ = ~i & ~new_n47_;
  assign new_n49_ = ~u & ~c0;
  assign d0 = new_n48_ | new_n49_;
  assign new_n51_ = v & ~c0;
  assign new_n52_ = ~j & ~new_n51_;
  assign new_n53_ = ~v & ~c0;
  assign e0 = new_n52_ | new_n53_;
  assign new_n55_ = w & ~c0;
  assign new_n56_ = ~k & ~new_n55_;
  assign new_n57_ = ~w & ~c0;
  assign f0 = new_n56_ | new_n57_;
  assign new_n59_ = x & ~c0;
  assign new_n60_ = ~l & ~new_n59_;
  assign new_n61_ = ~x & ~c0;
  assign g0 = new_n60_ | new_n61_;
  assign new_n63_ = y & ~c0;
  assign new_n64_ = ~m & ~new_n63_;
  assign new_n65_ = ~y & ~c0;
  assign h0 = new_n64_ | new_n65_;
  assign new_n67_ = z & ~c0;
  assign new_n68_ = ~n & ~new_n67_;
  assign new_n69_ = ~z & ~c0;
  assign i0 = new_n68_ | new_n69_;
  assign new_n71_ = a0 & ~c0;
  assign new_n72_ = ~o & ~new_n71_;
  assign new_n73_ = ~a0 & ~c0;
  assign j0 = new_n72_ | new_n73_;
  assign new_n75_ = b0 & ~c0;
  assign new_n76_ = ~p & ~new_n75_;
  assign new_n77_ = ~b0 & ~c0;
  assign k0 = new_n76_ | new_n77_;
  assign new_n79_ = r & u;
  assign new_n80_ = ~r & ~u;
  assign new_n81_ = ~new_n79_ & ~new_n80_;
  assign new_n82_ = ~a & s;
  assign new_n83_ = i & ~new_n82_;
  assign new_n84_ = a & s;
  assign new_n85_ = ~q & ~new_n84_;
  assign new_n86_ = ~new_n83_ & new_n85_;
  assign new_n87_ = ~new_n81_ & ~new_n86_;
  assign new_n88_ = ~new_n83_ & ~new_n84_;
  assign new_n89_ = ~q & ~new_n88_;
  assign m0 = new_n87_ | new_n89_;
  assign new_n91_ = ~b & s;
  assign new_n92_ = ~j & ~s;
  assign new_n93_ = ~new_n91_ & ~new_n92_;
  assign new_n94_ = ~q & ~new_n93_;
  assign new_n95_ = q & ~r;
  assign new_n96_ = ~u & v;
  assign new_n97_ = new_n95_ & new_n96_;
  assign new_n98_ = ~new_n94_ & ~new_n97_;
  assign new_n99_ = q & ~new_n80_;
  assign new_n100_ = ~v & new_n99_;
  assign n0 = new_n98_ & ~new_n100_;
  assign new_n102_ = ~v & w;
  assign new_n103_ = ~u & ~v;
  assign new_n104_ = ~r & new_n103_;
  assign new_n105_ = k & ~s;
  assign new_n106_ = ~c & ~new_n105_;
  assign new_n107_ = ~k & ~s;
  assign new_n108_ = ~new_n106_ & ~new_n107_;
  assign new_n109_ = ~q & ~new_n108_;
  assign new_n110_ = ~w & ~new_n104_;
  assign new_n111_ = ~r & new_n102_;
  assign new_n112_ = ~u & new_n111_;
  assign new_n113_ = ~new_n110_ & ~new_n112_;
  assign new_n114_ = q & ~new_n113_;
  assign o0 = ~new_n109_ & ~new_n114_;
  assign new_n116_ = ~w & x;
  assign new_n117_ = ~v & new_n116_;
  assign new_n118_ = ~v & ~w;
  assign new_n119_ = new_n80_ & new_n118_;
  assign new_n120_ = l & ~s;
  assign new_n121_ = ~d & ~new_n120_;
  assign new_n122_ = ~l & ~s;
  assign new_n123_ = ~new_n121_ & ~new_n122_;
  assign new_n124_ = ~q & ~new_n123_;
  assign new_n125_ = ~x & ~new_n119_;
  assign new_n126_ = ~r & new_n117_;
  assign new_n127_ = ~u & new_n126_;
  assign new_n128_ = ~new_n125_ & ~new_n127_;
  assign new_n129_ = q & ~new_n128_;
  assign p0 = ~new_n124_ & ~new_n129_;
  assign new_n131_ = ~x & y;
  assign new_n132_ = ~w & new_n131_;
  assign new_n133_ = ~v & new_n132_;
  assign new_n134_ = ~w & ~x;
  assign new_n135_ = ~r & new_n134_;
  assign new_n136_ = new_n103_ & new_n135_;
  assign new_n137_ = m & ~s;
  assign new_n138_ = ~e & ~new_n137_;
  assign new_n139_ = ~m & ~s;
  assign new_n140_ = ~new_n138_ & ~new_n139_;
  assign new_n141_ = ~q & ~new_n140_;
  assign new_n142_ = ~y & ~new_n136_;
  assign new_n143_ = ~r & new_n133_;
  assign new_n144_ = ~u & new_n143_;
  assign new_n145_ = ~new_n142_ & ~new_n144_;
  assign new_n146_ = q & ~new_n145_;
  assign q0 = ~new_n141_ & ~new_n146_;
  assign new_n148_ = ~y & z;
  assign new_n149_ = ~x & new_n148_;
  assign new_n150_ = ~w & new_n149_;
  assign new_n151_ = ~x & ~y;
  assign new_n152_ = ~w & new_n151_;
  assign new_n153_ = ~r & new_n152_;
  assign new_n154_ = new_n103_ & new_n153_;
  assign new_n155_ = n & ~s;
  assign new_n156_ = ~f & ~new_n155_;
  assign new_n157_ = ~n & ~s;
  assign new_n158_ = ~new_n156_ & ~new_n157_;
  assign new_n159_ = ~q & ~new_n158_;
  assign new_n160_ = ~z & ~new_n154_;
  assign new_n161_ = new_n103_ & new_n150_;
  assign new_n162_ = ~r & new_n161_;
  assign new_n163_ = ~new_n160_ & ~new_n162_;
  assign new_n164_ = q & ~new_n163_;
  assign r0 = ~new_n159_ & ~new_n164_;
  assign new_n166_ = ~u & new_n118_;
  assign new_n167_ = ~z & a0;
  assign new_n168_ = ~y & new_n167_;
  assign new_n169_ = ~x & new_n168_;
  assign new_n170_ = ~y & ~z;
  assign new_n171_ = ~x & new_n170_;
  assign new_n172_ = ~w & new_n171_;
  assign new_n173_ = ~r & new_n172_;
  assign new_n174_ = new_n103_ & new_n173_;
  assign new_n175_ = o & ~s;
  assign new_n176_ = ~g & ~new_n175_;
  assign new_n177_ = ~o & ~s;
  assign new_n178_ = ~new_n176_ & ~new_n177_;
  assign new_n179_ = ~q & ~new_n178_;
  assign new_n180_ = ~a0 & ~new_n174_;
  assign new_n181_ = new_n166_ & new_n169_;
  assign new_n182_ = ~r & new_n181_;
  assign new_n183_ = ~new_n180_ & ~new_n182_;
  assign new_n184_ = q & ~new_n183_;
  assign s0 = ~new_n179_ & ~new_n184_;
  assign new_n186_ = ~v & new_n134_;
  assign new_n187_ = ~u & new_n186_;
  assign new_n188_ = ~a0 & b0;
  assign new_n189_ = ~z & new_n188_;
  assign new_n190_ = ~y & new_n189_;
  assign new_n191_ = ~z & ~a0;
  assign new_n192_ = ~y & new_n191_;
  assign new_n193_ = ~x & new_n192_;
  assign new_n194_ = new_n118_ & new_n193_;
  assign new_n195_ = new_n80_ & new_n194_;
  assign new_n196_ = p & ~s;
  assign new_n197_ = ~h & ~new_n196_;
  assign new_n198_ = ~p & ~s;
  assign new_n199_ = ~new_n197_ & ~new_n198_;
  assign new_n200_ = ~q & ~new_n199_;
  assign new_n201_ = ~b0 & ~new_n195_;
  assign new_n202_ = new_n187_ & new_n190_;
  assign new_n203_ = ~r & new_n202_;
  assign new_n204_ = ~new_n201_ & ~new_n203_;
  assign new_n205_ = q & ~new_n204_;
  assign t0 = ~new_n200_ & ~new_n205_;
  assign new_n207_ = u & ~v;
  assign new_n208_ = new_n134_ & new_n207_;
  assign new_n209_ = ~a0 & ~b0;
  assign new_n210_ = new_n170_ & new_n209_;
  assign new_n211_ = new_n208_ & new_n210_;
  assign new_n212_ = ~r & new_n211_;
  assign new_n213_ = r & c0;
  assign new_n214_ = ~new_n212_ & ~new_n213_;
  assign u0 = q & ~new_n214_;
  assign l0 = c0;
endmodule


