#!/usr/bin/tclsh

## func :- fileToList
proc FileToList { source_file } {
    set orgfile [open $source_file {RDONLY}]
	set contents [split [read $orgfile] \n]
	list $contents
	close $orgfile
	return $contents
}


proc CreateDiffData { faultDir psgDir dirName } {
	set currDir [pwd]
	cd $faultDir
	set plotFiles [glob *_simData_q.dat]
	foreach i $plotFiles {
		lappend ListPlot [lindex [split $i "_"] 0]
	}
	set ListPlot1 $ListPlot
	set ListPlot [lsort -integer $ListPlot1]
    set MaxIter [lindex $ListPlot [expr [llength $ListPlot] - 1]]
    set MinIter [lindex $ListPlot 0]
    set SecMaxIter [lindex $ListPlot [expr [llength $ListPlot] - 2]] 
    set timeInt [expr $MaxIter - $SecMaxIter]
	cd $currDir
	if {[file isdirectory $dirName]} {
	   exec rm -rf $dirName
	}
	exec mkdir -p $dirName
	for {set i $MinIter} { $i <= $MaxIter } {incr i $timeInt} {
		set faultList [FileToList "$faultDir\/$i\_simData_q.dat"]
		set psgList [FileToList "$psgDir\/$i\_simData_q.dat"]
		set listLength [llength $faultList]
		set fopen [open "$dirName\/$i\_simData_q.dat" {RDWR CREAT APPEND}]
		for {set j 0} {$j < $listLength-1} {incr j} {
			set var_x [lindex [lindex $faultList $j] 0]
			set var_y [lindex [lindex $faultList $j] 1]
			puts [lindex [lindex $faultList $j] 2]
			puts [lindex [lindex $psgList $j] 2]
			set var_z [expr [lindex [lindex $faultList $j] 2] - [lindex [lindex $psgList $j] 2]]
			puts $fopen "$var_x   $var_y    $var_z"
		}
		close $fopen
	}

}

proc main { } {
  if {$::argc != 3} {
  	puts "Require faulty and psg diretory input as below"
	puts "./generateRelative <noPsg_fault_dir> <psg_dir>"
	exit
  } else {
        set faultDir [lindex $::argv 0]
	set psgDir [lindex $::argv 1]
	set dirName [lindex $::argv 2]
	CreateDiffData $faultDir $psgDir $dirName
  }
}

main
