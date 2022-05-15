#!/bin/bash
declare -A words
keys=()

while IFS='=' read -r turkish english; do
    words["$turkish"]="$english"
    keys+=("$turkish")
done < wordbank.txt

len=${#words[@]}

while :
do
    rand=$((0 + "$RANDOM" % "$len"))
    q=${keys[$rand]}
    answer=${words[$q]}
    read -rp "$q: "  guess

    if [[ "$guess" != "$answer" ]]; then
        echo "incorrect! you guessed $guess answer was $answer"
        continue
    fi
    echo "correct!"
done

