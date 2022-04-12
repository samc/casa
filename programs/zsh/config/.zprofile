# Trigger a genie bottle shell if we're not in a bottle.
# if [ -z "$INSIDE_GENIE" ]; then
#   genie --shell
# fi

# This is a temporary hack until the following bug is fixed:
# https://github.com/arkane-systems/genie/issues/201
if [ -f /run/genie.path ]; then
    export PATH=$PATH:$(cat /run/genie.path)
fi