seconds_to_milliseconds() {
    if [[ -z $1 ]]; then
        echo "Usage: seconds_to_milliseconds <seconds>"
        return 1
    fi
    local seconds=$1
    local milliseconds=$(echo "$seconds * 1000" | bc)
    echo "$seconds seconds is equal to $milliseconds milliseconds."
}

typeset -F SECONDS
seconds_to_milliseconds $SECONDS
