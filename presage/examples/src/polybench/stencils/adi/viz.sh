#!/bin/bash
WD=/Users/vinu/apps/presage/examples/src/polybench/stencils
if [[ "$3" == -f ]] ; then
    echo ----- INJECTING FAULT -----
    mkdir -p ./fault
    rm -rf ./fault/*
    $WD/adi/bin/adi $1 $2 0
    mv $WD/adi/*.dat $WD/adi/fault/
    cd ./fault/
    $WD/plot t
elif [[ "$3" == -p ]] ; then
    echo ----- PRESAGING FAULT -----
    mkdir -p ./psg
    rm -rf ./psg/*
    $WD/adi/bin/adi $1 $2 1
    mv $WD/adi/*.dat $WD/adi/psg/
    cd ./psg/
    $WD/plot t
elif [[ "$3" == -d ]] ; then
    $WD/adi/diff.tcl $WD/adi/fault $WD/adi/psg
    cd ./diffDir 
    $WD/plot t
fi



