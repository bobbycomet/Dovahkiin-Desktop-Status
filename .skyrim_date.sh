#!/bin/bash

# Skyrim month names
months=(
  "Morning Star"  # January
  "Sun's Dawn"    # February
  "First Seed"    # March
  "Rain's Hand"   # April
  "Second Seed"   # May
  "Mid Year"      # June
  "Sun's Height"  # July
  "Last Seed"     # August
  "Hearthfire"    # September
  "Frostfall"     # October
  "Sun's Dusk"    # November
  "Evening Star"  # December
)

# Skyrim weekday names (you can customize this if needed)
weekdays=(
  "Sundas"    # Sunday
  "Morndas"   # Monday
  "Tirdas"    # Tuesday
  "Middas"    # Wednesday
  "Turdas"    # Thursday
  "Fredas"    # Friday
  "Loredas"   # Saturday
)

# Get current date parts
day=$(date +%-d)
month_index=$(($(date +%-m) - 1))
weekday_index=$(date +%w)

# Output Skyrim-style date
echo "${weekdays[$weekday_index]}, ${months[$month_index]} $day"
