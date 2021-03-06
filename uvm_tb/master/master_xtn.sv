
//  ###########################################################################
//
//  Licensed to the Apache Software Foundation (ASF) under one
//  or more contributor license agreements.  See the NOTICE file
//  distributed with this work for additional information
//  regarding copyright ownership.  The ASF licenses this file
//  to you under the Apache License, Version 2.0 (the
//  "License"); you may not use this file except in compliance
//  with the License.  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing,
//  software distributed under the License is distributed on an
//  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
//  KIND, either express or implied.  See the License for the
//  specific language governing permissions and limitations
//  under the License.
//
//  ###########################################################################


`ifndef _MASTER_XTN_INCLUDED_
`define _MASTER_XTN_INCLUDED_








//-----------------------------------------------------------------------------
// Class: master_xtn
// Description of the class.
// This class holds the data items reqquired to drive stimulus to duv
// and also holds methods that manipulate those data items
//-----------------------------------------------------------------------------
class master_xtn extends uvm_sequence_item;

//register with factory so that we can use create uvm method
// and override in future if necessary
  `uvm_object_utils(master_xtn)

//input signals
 bit sclk;
 bit ss_n;

rand bit [1:0]cpol;
rand bit [1:0]cpha;

  bit [7:0]data_in_mosi;
   

 rand bit mosi;
// rand bit mosi1;
 //rand bit mosi2;
// rand bit mosi3;
 bit miso;
// bit miso1;
 //bit miso2;
 //bit miso3;

//---------------------------------------------
// Externally defined tasks and functions
//---------------------------------------------
extern function new(string name="master_xtn"); 
extern function void do_print(uvm_printer printer);

endclass:master_xtn




//-----------------------------------------------------------------------------
// Constructor: new
// Initializes the  class object
//
// Parameters:
//  name - instance name of the  master_template
//-----------------------------------------------------------------------------
function master_xtn::new(string name="master_xtn"); 
  super.new(name); 
endfunction:new 

//-----------------------------------------------------------------------------
// Function: do_print
//print method can be added to display the data members values
//-----------------------------------------------------------------------------
function void master_xtn::do_print(uvm_printer printer);
  super.do_print(printer);
     
       printer.print_field( "sclk", sclk, 1,UVM_DEC);
       printer.print_field( "ss_n",  ss_n, 1,UVM_DEC);
       printer.print_field("cpol", cpol, 2, UVM_DEC);
       printer.print_field("cpha", cpha, 2, UVM_DEC);

      printer.print_field("data_in_mosi",data_in_mosi,8,UVM_HEX);
    //  printer.print_field("data_out_miso",data_out_miso,8,UVM_HEX);



       printer.print_field( "miso",  miso, 1,UVM_DEC);
      /* printer.print_field( "miso1",  miso1, 1,UVM_DEC);
       printer.print_field( "miso2",  miso2, 1,UVM_DEC);
       printer.print_field( "miso3",  miso3, 1,UVM_DEC);*/

       printer.print_field( "mosi",  mosi, 1,UVM_DEC);
      /* printer.print_field( "mosi1",  mosi1, 1,UVM_DEC);
       printer.print_field( "mosi2",  mosi2, 1,UVM_DEC);
       printer.print_field( "mosi3",  mosi3, 1,UVM_DEC);*/



endfunction:do_print
 
//------------------------------------------------------------------------------


 `endif
