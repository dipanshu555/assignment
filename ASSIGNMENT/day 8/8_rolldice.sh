#! /bin/bash 

diceResult=(0 0 0 0 0 0 0)

function rollDice() {
    echo $((RANDOM%6+1))
}

function findMaxMinDice() {
resultDice=("$@")OOB
max=${resultDice[1]}
maxDice=1
min=${resultDice[1]}
minDice=1
for ((counter=2; counter < ${#resultDice[@]} ; counter++))
do
    if [ $max -lt ${resultDice[$counter]} ]
    then
        max=${resultDice[$counter]}
        maxDice=$counter
    fi

    if [ $min -gt ${resultDice[$counter]} ]
    then
        min=${resultDice[$counter]}
        minDice=$counter
    fi
done

echo "Dice with max times $maxDice and min times $minDice "

}
