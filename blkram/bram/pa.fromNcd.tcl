
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name bram -dir "/home/zel/elgf2/projects/blkram/bram/planAhead_run_1" -part xc3s50pq208-5
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/zel/elgf2/projects/blkram/bram/ram_piped.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/zel/elgf2/projects/blkram/bram} }
set_property target_constrs_file "ram_piped.ucf" [current_fileset -constrset]
add_files [list {ram_piped.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/home/zel/elgf2/projects/blkram/bram/ram_piped.ncd"
if {[catch {read_twx -name results_1 -file "/home/zel/elgf2/projects/blkram/bram/ram_piped.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/zel/elgf2/projects/blkram/bram/ram_piped.twx\": $eInfo"
}
