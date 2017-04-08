// COPYRIGHT � ProgBit AS 2017
// This file has been generated using ProgBit autoreg tools

#include "stdint.h"

typedef struct{
   uint32_t             addr;
   uint8_t              width;
   uint8_t              bitPos;
   uint16_t             val;
} autoreg_register_property;

typedef enum{
   Ram,
   RamAddr,
} mem;

const autoreg_register_property i0jtag.i0demo.i0core.i0rb_mem.mem [] = {
  //    Addr   Width  BitPos     Val          Name           Type    Format  Info
   {   1032,     36,      0,       0   },  // Ram            RAMIFRW U       "Ram data"                                          
   {   1024,      8,      0,       0   },  // RamAddr        RAMIFADDRU       "Ram address register"                              
};

typedef enum{
   branchesrev,
   day,
   hour,
   latch,
   minute,
   month,
   rctest,
   rtest,
   rwtest,
   trunkrev,
   year,
} revision;

const autoreg_register_property i0jtag.i0demo.i0core.i0rb_revision.revision [] = {
  //    Addr   Width  BitPos     Val          Name           Type    Format  Info
   {      0,      8,      8,       0   },  // branchesrev    RC      U       "Branches revision."                                
   {      3,     16,      0,      08   },  // day            RC      U       "Day of build"                                      
   {      4,     16,      0,      14   },  // hour           RC      U       "Hour of build"                                     
   {      9,      1,      0,       0   },  // latch          WI      U       "Global latch"                                      
   {      5,     16,      0,      48   },  // minute         RC      U       "Minute of build"                                   
   {      2,     16,      0,      04   },  // month          RC      U       "Month of build"                                    
   {     12,     40,      0,   0xabc   },  // rctest         RC      U       "Test register"                                     
   {      9,     40,      3,       0   },  // rtest          R       U       "Test register"                                     
   {      6,     40,      1,       0   },  // rwtest         RW      U       "Test register"                                     
   {      0,      8,      0,      20   },  // trunkrev       RC      U       "Trunk revision."                                   
   {      1,     16,      0,      17   },  // year           RC      U       "Year of build"                                     
};

typedef enum{
   Ack,
   DataI,
   DataO,
   PhyAddr,
   Rd,
   RegAddr,
   Wr,
} mdio;

const autoreg_register_property i0jtag.i0demo.i0core.i0mac.i0rb_mdio.mdio [] = {
  //    Addr   Width  BitPos     Val          Name           Type    Format  Info
   {    256,      1,      7,       0   },  // Ack            R       U       "Ack when done"                                     
   {    259,     16,      0,       0   },  // DataI          R       U       "Data in from phy"                                  
   {    258,     16,      0,       0   },  // DataO          RW      U       "Data out to phy"                                   
   {    256,      5,      0,       0   },  // PhyAddr        RW      U       "Phy address"                                       
   {    256,      1,      6,       0   },  // Rd             WI      U       "Read"                                              
   {    257,      5,      0,       0   },  // RegAddr        RW      U       "Register address"                                  
   {    256,      1,      5,       0   },  // Wr             WI      U       "Write"                                             
};

typedef enum{
   led0,
   led1,
   led2,
   led3,
} led;

const autoreg_register_property i0jtag.i0demo.i0core.i0rb_led.led [] = {
  //    Addr   Width  BitPos     Val          Name           Type    Format  Info
   {     63,      1,      0,       0   },  // led0           RW      U       "led 0 control, 1 ~ light"                          
   {     63,      1,      1,       1   },  // led1           RW      U       "led 1 control, 1 ~ light"                          
   {     63,      1,      2,       0   },  // led2           RW      U       "led 2 control, 1 ~ light"                          
   {     63,      1,      3,       0   },  // led3           RW      U       "led 3 control, 1 ~ light"                          
};

typedef enum{
   FifoRst,
   LoopEn,
   RxCnt,
   RxFifo,
   RxFifoEmpty,
   RxFifoFull,
   TxCnt,
   TxFifo,
   TxFifoEmpty,
   TxFifoFull,
   TxStart,
} mac;

const autoreg_register_property i0jtag.i0demo.i0core.i0mac.i0rb_mac.mac [] = {
  //    Addr   Width  BitPos     Val          Name           Type    Format  Info
   {    265,      1,      2,       0   },  // FifoRst        WI      U       "Reset fifo logic"                                  
   {    265,      1,      0,       0   },  // LoopEn         RW      U       "Enable looping"                                    
   {    263,     10,      0,       0   },  // RxCnt          R       U       "RxFifo fill"                                       
   {    261,      8,      0,       0   },  // RxFifo         FIFOR   U       "Receive fifo"                                      
   {    264,      1,      3,       0   },  // RxFifoEmpty    R       U       "Receive fifo empty"                                
   {    264,      1,      2,       0   },  // RxFifoFull     R       U       "Receive fifo full"                                 
   {    262,     10,      0,       0   },  // TxCnt          R       U       "TxFifo fill"                                       
   {    260,      8,      0,       0   },  // TxFifo         FIFOW   U       "Transmit fifo"                                     
   {    264,      1,      1,       0   },  // TxFifoEmpty    R       U       "Transmit fifo empty"                               
   {    264,      1,      0,       0   },  // TxFifoFull     R       U       "Transmit fifo full"                                
   {    265,      1,      1,       0   },  // TxStart        WI      U       "Start transmitting"                                
};

