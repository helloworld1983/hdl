
set worst_path [get_timing_paths -npaths 1 -setup]
foreach_in_collection path $worst_path {
  set slack [get_path_info $path -slack]
}

if {$slack > 0} {
  set worst_path [get_timing_paths -npaths 1 -hold]
  foreach_in_collection path $worst_path {
    set slack [get_path_info $path -slack]
  }
}

##if {$slack < 0} {
##  use_this_invalid_command_to_crash
##}
