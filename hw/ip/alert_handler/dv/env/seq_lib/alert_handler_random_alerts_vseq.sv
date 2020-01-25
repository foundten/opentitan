// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// this sequence enable random alert inputs, and rand wr phase cycles

class alert_handler_random_alerts_vseq extends alert_handler_sanity_vseq;
  `uvm_object_utils(alert_handler_random_alerts_vseq)

  `uvm_object_new

  function void pre_randomize();
    this.wr_phases_cyc_c.constraint_mode(0);
    this.enable_one_alert_c.constraint_mode(0);
  endfunction

endclass : alert_handler_random_alerts_vseq
