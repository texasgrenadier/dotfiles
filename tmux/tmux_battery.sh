battery="$(pmset -g ps | awk 'NR==2' | perl -pe 's/.*?(\d+)%.*/\1/')"

if [[ $battery -lt 25 ]]; then
  echo "#[blink]♥ #[noblink]♡ ♡ ♡ "
elif [[ $battery -lt 50 ]]; then
  echo "♥ ♥ ♡ ♡ "
elif [[ $battery -lt 75 ]]; then
  echo "♥ ♥ ♥ ♡ "
else
  echo "♥ ♥ ♥ ♥ "
fi
