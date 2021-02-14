index=0
monitor="$(polybar -m | grep +0+0 | sed s/:.*// | tac)"
leftwm-state -q -n -t $SCRIPTPATH/sizes.liquid | sed -r '/^\s*$/d' | while read -r width x y
do
  barname="mainbar$index"
  monitor=$monitor offsetx=$x width=$width polybar -c $home/.config/polybar/config $barname &> /dev/null &
  let index=index+1
done
