# Copyright 2023 D. Michael Parrish
# Licensed under the terms of AGPL-3
# <https://www.gnu.org/licenses/agpl-3.0.html>

fss() {
    test $# -lt 1 && return
    local H=~
    local LIB=$H'/local/lib/fss'
    local BASENAME=$1
    shift
    local PATHNAME="$LIB/$BASENAME"
    test -f "$PATHNAME" && "$PATHNAME" "$@"
}

export -f fss
