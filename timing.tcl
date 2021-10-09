create_timing_netlist -model slow -speed 6
read_sdc sorter.sdc
update_timing_netlist
report_sdc -panel_name "SDC Assignments"
report_clock_fmax_summary -panel_name "Fmax Summary"
report_datasheet -panel_name "Datasheet Report"
check_timing -panel_name "Check Timing"
report_clock_transfers -panel_name "Clock Transfers"
report_ucp -panel_name "Unconstrained Paths"
qsta_utility::generate_all_summary_tables
qsta_utility::generate_top_failures_per_clock "Top Failing Paths" 200
qsta_utility::generate_all_io_timing_reports "Report Timing (I/O)" 1000
qsta_utility::generate_all_core_timing_reports "Report Timing (Core)" 1000
