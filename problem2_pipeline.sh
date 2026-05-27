#!/bin/bash
input="data/processes_filters/raw/server.log
output="data/processes_filters/processed/error_warning_summary_from)script.txt"
grep -e "ERROR" -e "WARNING" "$input"\
| cut -d'' -f1,2,3\
| sort\
| uniw -c\
| tee "$output"
