#!/bin/bash
filename="student_repositories.txt"
while read -r line
do
    name="$line"
    student_name=$(echo $name | cut -d : -f1)
    url=$(echo $name | cut -d : -f2-)
    echo $student_name
    echo $url
    wget $url -O "student_code/${student_name}.py"
done < "$filename"
