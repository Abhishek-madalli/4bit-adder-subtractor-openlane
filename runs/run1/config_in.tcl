# designs/addsub4/config.tcl
# Minimal OpenLane configuration for sky130_fd_sc_hd

set ::env(DESIGN_NAME) "addsub4_top"
set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/src/addsub4_top.v"

# Clock constraints
set ::env(CLOCK_PORT)  "clk"
set ::env(CLOCK_NET)   "clk"
# Start conservatively at 20 ns (50 MHz). Tighten to push for timing.
set ::env(CLOCK_PERIOD) "20.0"

# Floorplan / density
set ::env(FP_CORE_UTIL)     30
set ::env(PL_TARGET_DENSITY) 0.55

# Keep it as a core (no I/O padframe)
set ::env(DESIGN_IS_CORE) 1
