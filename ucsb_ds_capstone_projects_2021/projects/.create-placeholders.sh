#!/bin/bash

teams=( "appfolio" "calcofi1" "calcofi2" "carpedata" "ccber" "csep" "evidation" "flir" "invoca" "nceas" "nri" "sansum" )

for t in "${teams[@]}"
do
    mkdir -p $t
    echo "# $t" > $t/description.md
    echo "Project description" >> $t/description.md
    echo "# Update 1" > $t/update1.md
    echo "Project updates" >> $t/update1.md
    echo "    - file: projects/${t}/description" 
    echo "      sections:"
    echo "        - file: projects/${t}/update1"
done
