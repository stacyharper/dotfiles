#!/bin/bash

from=`formail -X From: < $1`
sub=`formail -X Subject: < $1`

# tweaks < > are special
from=${from//</\(}
from=${from//>/\)}
from=${from//&/\.}
sub=${sub//</\(}
sub=${sub//>/\)}
sub=${sub//&/\.}

sub=${sub:0:200}
from=${from:0:75}

/usr/bin/notify-send -u normal "$from" "$sub"
