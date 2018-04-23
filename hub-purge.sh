#!/bin/bash

# Validate arguments
if [ $# -lt 1 ]; then
    >&2 echo "Usage: $0 <username/repo_name | full_url> ...\n"
    exit 1
fi

# Iterate over arguments
for url in "$@"; do

    # Generate GitHub repository URL
    url=`sed -e 's@^[A-Za-z0-9-][A-Za-z0-9-]*/[A-Za-z0-9-][A-Za-z0-9-]*$@https://github.com/&@' <<< "$url"`

    # Fetch README page
    echo "Fetching: $url"
    curl -sL "$url" \
    | grep -oE '<img src="https?://camo.githubusercontent.com/[^"]+' \
    | sed -e 's/<img src="//' \
    | while read url; do

        # Purge resources
        echo "Purging: $url"
        curl -sX PURGE "$url" >/dev/null &

    done &
done

# Wait all jobs done
wait
