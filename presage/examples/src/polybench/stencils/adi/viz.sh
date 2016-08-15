#!/bin/bash
WD=/Users/vinu/apps/presage/examples/src/polybench/stencils
if [[ "$3" == -n ]] ; then
    echo ----- INJECTING FAULT -----
    mkdir -p ./native
    rm -rf ./native/*
    $WD/adi/bin/adi $1 $2 0
    mv $WD/adi/*.dat $WD/adi/native/
    cd ./native/
    $WD/plot native
elif [[ "$3" == -f ]] ; then
    echo ----- INJECTING FAULT -----
    mkdir -p ./fault
    rm -rf ./fault/*
    $WD/adi/bin/adi $1 $2 0 1
    mv $WD/adi/*.dat $WD/adi/fault/
    cd ./fault/
    $WD/plot fault
elif [[ "$3" == -p ]] ; then
    echo ----- PRESAGING FAULT -----
    mkdir -p ./psg
    rm -rf ./psg/*
    $WD/adi/bin/adi_dti_gep $1 $2 1
    mv $WD/adi/*.dat $WD/adi/psg/
    cd ./psg/
    $WD/plot psg
elif [[ "$3" == -dfp ]] ; then
    $WD/adi/diff.tcl $WD/adi/fault $WD/adi/psg dfp
    cd ./dfp 
    $WD/plot dfp
elif [[ "$3" == -dnf ]] ; then
    $WD/adi/diff.tcl $WD/adi/native $WD/adi/fault dnf
    cd ./dnf 
    $WD/plot dnf
elif [[ "$3" == -dnp ]] ; then
    $WD/adi/diff.tcl $WD/adi/native $WD/adi/psg dnp
    cd ./dnp 
    $WD/plot dnp
fi
