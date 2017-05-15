#!/bin/bash
# Firewall Status script
### The following line load the Hello IT bash script lib
. "$HELLO_IT_SCRIPT_FOLDER/com.github.ygini.hello-it.scriptlib.sh"

# Functions
# updateTitle "String" - Updates Menu Item Title (Text of item)
# updateTooltip "String" - Updates Menu Item Hover Text
# updateState ${STATE[0]} - Updates the state icon
# STATE VALUES
# supported states are managed by the STATE array
# ${STATE[0]} --> OK (Green light)
# ${STATE[1]} --> Warning (Orange light)
# ${STATE[2]} --> Error (Red light)
# ${STATE[3]} --> Unavailable (Empty circle)
# ${STATE[4]} --> No state to display (Nothing at all)

function onClickAction {
  setTitleAction "$@"

}

function fromCronAction {
  setTitleAction "$@"
}

function setTitleAction {
    if [ "$(defaults read /Library/Preferences/com.apple.alf globalstate 2> /dev/null)" ]; then
    updateTitle "Firewall is OFF"
    updateState "${STATE[1]}"
  else
    updateTitle "Firewall is ON"
    updateState "${STATE[0]}"
  fi
}

### The only things to do outside of a bash function is to call the main function defined by the Hello IT bash lib.
main "$@"

exit 0
