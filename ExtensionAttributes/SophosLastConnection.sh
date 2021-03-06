#!/bin/zsh

# Check when the last connection to Sophos Central has been made
# Use date type extension attribute

# Configure the timezone of the output
export TZ="GMT-1"

echo "<result>$(LANG="en_US" /bin/date -jf "%T %b %d, %Y (UTC%z)" "$(/usr/libexec/PlistBuddy -c 'Print SMEMcsLastCommunications:SMEMcsLastSuccessCommunicationTimestamp' /Library/Preferences/com.sophos.mcs.plist)" "+%Y-%m-%d %H:%M:%S")</result>"