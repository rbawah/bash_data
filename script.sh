#!/usr/bin/bash
# !/usr/bin/python3

echo "Hello, World"
# print("hello from python")

passing args to script
echo "Hello, $1!"
echo "Welcome!"
echo "Your age is: $2"
echo "Total args passed: $#"
echo "All args: $@"

# echo

# single, double-quotes, backticks shell within a shell
# echo 'Datetime: `date`'
# echo 'Datetime: $(date)'
# echo "Datetime: `date`"
# echo "Datetime: $(date)"

# echo 

# shell-in-shell, continued
# date_time=$(echo $(date) | cut -d " " -f 2,3)
# echo "Todays date is: $date_time"

# numbers in shell
# expr 5 + 3
# echo $((5 + 3))
# echo "10/3" | bc
# echo "scale=2; 10/3" | bc

# declare -a first_array
# first_array+=(1 2 3 4)
# echo "First array: ${first_array[@]}"
# echo "First array: ${first_array[*]}"
# echo "Length of first array: ${#first_array[@]}"
# echo "First element: ${first_array[0]}"
# echo "slice:  ${first_array[@]:1:2}"

# echo

# # create and add elements at the same time
# second_array=(5 6 7 8)
# echo "Second array: ${second_array[@]}"
# echo "Length of second array: ${#second_array[@]}"
# echo "First element: ${second_array[0]}"

# echo

# third_array=(5 7 10 21)
# echo "Third array: ${third_array[@]}"
# third_array[0]=33 # replacing element
# echo "Third array: ${third_array[@]}"
# third_array+=(61) # appending to array
# echo "Third array: ${third_array[@]}"
# echo "slice: ${third_array[@]:1:2}"

# echo

# associative arrays
# declare -A city_details
# city_details=([name]="Calgary" [population]=1600000 [province]="AB")
# echo ${city_details[@]}
# echo "Keys: ${!city_details[@]}" # return all keys

# echo

# declare -A city_details2=([name]="Vancouver" [population]=3000000 [province]="BC")

# all_cities=(city_details city_details2)

# for city_name in "${all_cities[@]}"; do
#     declare -n city="$city_name"

#     echo "City: ${city[name]}"
#     echo "Population: ${city[population]}"
#     echo "Province: ${city[province]}"
#     echo "---"
# done




# if grep -q 'sydney' $1; then
#     mv $1 sydney/
# fi

# if grep -q 'melbourne|brisbane' $1; then
#     rm $1
# fi

# if grep -q 'canberra' $1; then
#     mv $1 "IMPORTANT_$1"
# fi



# case $(cat $1) in
#     *sydney*)
#     mv $1 sydney/ ;;
#     *melbourne*|*brisbane*)
#     rm $1 ;;
#     *canberra*)
#     mv $1 "IMPORTANT_$1" ;;
#     *)
#     echo "No cities found" ;;
# esac



# case $(cat $1) in
#     *sydney*)
#     cp $1 sydney/ ;;
#     *melbourne*|*brisbane*)
#     rm $1 ;;
#     *ring*)
#     cp $1 "IMPORTANT_$1" ;;
#     *)
#     echo "No cities found" ;;
# esac


# function_name () {
#     #some_code
#     return #something
# }

# function function_name {
#     #some_code
#     return #something
# }


# function print_hello () {
#     echo "Hello world!"
# }
# print_hello # calling the function


# function print_filename {
#     local first_filename=$1
#     echo "Inside: $first_filename"
# }
# print_filename "TwoTowers.txt" "LOTR.txt"
# echo "Outside: $first_filename"
