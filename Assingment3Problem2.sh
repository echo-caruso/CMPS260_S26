#!/bin/bash

# Function to get month message
get_month_message() {
    case $1 in
        1) echo "The month of January is named after Janus, the Roman god and protector of gates and doorways." ;;
        2) echo "The month of February means 'februa' in Latin or 'to cleanse' in English." ;;
        3) echo "The month of March is named after Mars, the Roman god of war." ;;
        4) echo "The month of April means 'aperio' in Latin or 'to open(bud)' in English." ;;
        5) echo "The month of May is named after Maia, the Roman god who oversaw the growth of plants." ;;
        6) echo "The month of June is named after Juno, the Roman god of marriage and women." ;;
        7) echo "The month of July is named after Julius Caesar." ;;
        8) echo "The month of August is named after Augustus Caesar." ;;
        9) echo "The month of September means 'septum' in Latin, meaning 'seven'." ;;
        10) echo "The month of October means 'octo' in Latin, meaning 'eight'." ;;
        11) echo "The month of November means 'novem' in Latin, meaning 'nine'." ;;
        12) echo "The month of December means 'decem' in Latin, meaning 'ten'." ;;
        *) echo "Invalid month. Please enter a value between 1 and 12." ;;
    esac
}

# Function to get day message
get_day_message() {
    case $1 in
        1) echo "Your birthday is the 1st. You are a self-starter with innovative ways of creating opportunity." ;;
        2) echo "Your birthday is the 2nd. You have a great talent for finding solutions." ;;
        3) echo "Your birthday is the 3rd. Expression comes naturally to you." ;;
        4) echo "Your birthday is the 4th. You bring stability and rationality to any situation." ;;
        5) echo "Your birthday is the 5th. Flexibility is your forte." ;;
        6) echo "Your birthday is the 6th. Your heart is your gift." ;;
        7) echo "Your birthday is the 7th. You possess a refined mind and a deep urge to uncover life's mysteries." ;;
        8) echo "Your birthday is the 8th. You have a talent for setting and reaching goals." ;;
        9) echo "Your birthday is the 9th. Your compassion makes you shine." ;;
        10) echo "Your birthday is the 10th. You are blessed with great leadership skills." ;;
        11) echo "Your birthday is the 11th. You have a keen awareness of what's happening around you." ;;
        12) echo "Your birthday is the 12th. Creativity is a driving force in your life." ;;
        13) echo "Your birthday is the 13th. You are a conscientious worker." ;;
        14) echo "Your birthday is the 14th. You are open-minded and pragmatic." ;;
        15) echo "Your birthday is the 15th. Your love for others is powerful." ;;
        16) echo "Your birthday is the 16th. Your inquisitive mind uncovers important truths." ;;
        17) echo "Your birthday is the 17th. You are independent and ambitious." ;;
        18) echo "Your birthday is the 18th. You are open-minded and open-hearted." ;;
        19) echo "Your birthday is the 19th. You are independent and self-sufficient." ;;
        20) echo "Your birthday is the 20th. You are dedicated to building harmonious relationships." ;;
        21) echo "Your birthday is the 21st. You thrive in active social settings." ;;
        22) echo "Your birthday is the 22nd. You have the power to create great things." ;;
        23) echo "Your birthday is the 23rd. You have a zest for life." ;;
        24) echo "Your birthday is the 24th. You have a heart of gold." ;;
        25) echo "Your birthday is the 25th. You are endlessly curious." ;;
        26) echo "Your birthday is the 26th. You have a desire to succeed and help others." ;;
        27) echo "Your birthday is the 27th. Your mind is open and compassionate." ;;
        28) echo "Your birthday is the 28th. You make a capable and compassionate leader." ;;
        29) echo "Your birthday is the 29th. You have an amazing ability to bring things together." ;;
        30) echo "Your birthday is the 30th. You are an original thinker and communicator." ;;
        31) echo "Your birthday is the 31st. You mix practicality with imagination." ;;
        *) echo "Invalid day. Please enter a value between 1 and 31." ;;
    esac
}

# Function to get year message
get_year_message() {
    year=$1

    if [ "$year" -lt 1944 ]; then
        echo "You are ancient."
    elif [ "$year" -le 1964 ]; then
        echo "You are a Baby Boomer."
    elif [ "$year" -le 1979 ]; then
        echo "You are Gen X."
    elif [ "$year" -le 1994 ]; then
        echo "You are a Millennial."
    elif [ "$year" -le 2015 ]; then
        echo "You are Gen Z."
    else
        echo "You are Gen Alpha."
    fi
}

# Main program loop
while true
do
    # User input
    read -p "Enter your birth month (1-12): " month
    read -p "Enter your birth day (1-31): " day
    read -p "Enter your birth year: " year

    echo
    echo "Birthday Information:"
    get_month_message "$month"
    get_day_message "$day"
    get_year_message "$year"

    echo
    read -p "Would you like to enter another birthday? (y/n): " choice

    if [[ "$choice" != "y" && "$choice" != "Y" ]]; then
        break
    fi
done

echo "Goodbye!"
