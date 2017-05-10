#!/usr/bin/env bash
# ReK2 Fernandez Chris
# hispagatos hacking collective
# https://hispagatos.org 
# https://keybase.io/cfernandez


source config.sh

if [ -f ${WORKINGDIR}/index.html ]; then
  rm ${WORKINGDIR}/index.html
fi

echo "<table border="1">"                                                     >> ${WORKINGDIR}/index.html
echo "<caption><em><h1>SUMMARY REPORT OF ALL HOSTS PENTESTED</h1></em></caption>"      >> ${WORKINGDIR}/index.html

for host in $(ls ${WORKINGDIR} ); do
  if [ ! $host == "index.html" ]; then
    echo "<tr>"                                                               >> ${WORKINGDIR}/index.html
    echo "<td>"                                                               >> ${WORKINGDIR}/index.html
    echo "<center><a href="${host}/index.html"><h2>${host}</h2></a></center>" >> ${WORKINGDIR}/index.html
    txt2html  --preformat_trigger_lines=0 ${WORKINGDIR}/$host/STEPS           >> ${WORKINGDIR}/index.html || true
    echo "<center><a href="${host}/index.html"><b>click here for data for ${host}</b></a></center>" >> ${WORKINGDIR}/index.html
    echo "</td>"                                                              >> ${WORKINGDIR}/index.html
    echo "</tr>"                                                              >> ${WORKINGDIR}/index.html
  fi
done
