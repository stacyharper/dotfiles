#!/bin/bash

routes=$(make cmd="debug:router"|sed -e '1,4d'|tac|sed -e '1,2d'|tac|grep -Eo '^  \w+ ')

for route in $routes; do
	ag $route >> /dev/null
	if [ 1 -eq "$?" ]; then
		echo "$route"
	fi
done
