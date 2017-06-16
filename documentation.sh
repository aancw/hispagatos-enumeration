#!/usr/bin/env bash
# ReK2 Fernandez Chris
# hispagatos hacking collective
# https://hispagatos.org 
# https://keybase.io/cfernandez


source config.sh

if [ -f ${WORKINGDIR}/index.html ]; then
  rm ${WORKINGDIR}/index.html
fi


echo "<table border="1" align="center">"                                               >> ${WORKINGDIR}/index.html
echo "<caption><b><h1>SUMMARY REPORT OF ALL HOSTS PENTESTED</h1></b></caption>"        >> ${WORKINGDIR}/index.html
for HOST in $(ls ${WORKINGDIR} ); do
  if [ ! $HOST == "index.html" ]; then
    if [ -f ${WORKINGDIR}/${HOST}/main.html ]; then
      rm ${WORKINGDIR}/${HOST}/main.html
    fi
    if [ -f ${WORKINGDIR}/${HOST}/index.html ]; then
      cp ${WORKINGDIR}/${HOST}/index.html ${WORKINGDIR}/${HOST}/main.html
    fi
    echo "<table border="1" align="center">"                                            >> ${WORKINGDIR}/${HOST}/main.html
    echo "<caption><em><h4>Captured interesting files from host</h4></em></caption>"    >> ${WORKINGDIR}/${HOST}/main.html
    if [ -d {WORKINGDIR}/${HOST}/files ]; then
      for FILE1 in $(ls ${WORKINGDIR}/${HOST}/files ); do
        echo "<tr>"                                                                     >> ${WORKINGDIR}/${HOST}/main.html
        echo "<td>"                                                                     >> ${WORKINGDIR}/${HOST}/main.html
        echo "<a href="${WORKINGDIR}/${HOST}/files/${FILE1}">${FILE1}</a>"              >> ${WORKINGDIR}/${HOST}/main.html 
        echo "</td>"                                                                    >> ${WORKINGDIR}/${HOST}/main.html
        echo "</tr>"                                                                    >> ${WORKINGDIR}/${HOST}/main.html
      done
    fi

    echo "<tr>"                                                                        >> ${WORKINGDIR}/index.html
    echo "<td>"                                                                        >> ${WORKINGDIR}/index.html
    echo "<center><a href="${HOST}/main.html"><h2>${HOST}</h2></a></center>"           >> ${WORKINGDIR}/index.html
    if [ -f ${WORKINGDIR}/${HOST}/STEPS ]; then
      txt2tags -H -t html  -i ${WORKINGDIR}/${HOST}/STEPS -o -                         >> ${WORKINGDIR}/index.html || true
    fi
    echo "<center><a href="${HOST}/main.html"><b>click here for data for ${HOST}</b></a></center>" >> ${WORKINGDIR}/index.html
    echo "</td>"                                                                       >> ${WORKINGDIR}/index.html
    echo "</tr>"                                                                       >> ${WORKINGDIR}/index.html
  fi
done
echo "</table>"                                                                        >> ${WORKINGDIR}/index.html
