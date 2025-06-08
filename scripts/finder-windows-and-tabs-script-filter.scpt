#!/usr/bin/osascript

on run argv
	set output to ""
	tell application "Finder"
		set windowList to windows
		repeat with i from 1 to count of windowList
			set windowItem to item i of windowList
			try
				set windowName to name of target of windowItem
				set windowPath to POSIX path of (target of windowItem as alias)
				set output to output & "{ \"uid\": \"" & i & "\", \"title\": \"" & windowName & "\",\"subtitle\": \"" & windowPath & "\", \"arg\": \"" & windowPath & "\" },"
			on error
				-- handle error (skip this window)
			end try
		end repeat
	end tell
	if output is not "" then
		set output to text 1 thru -2 of output
	end if
	set alfredJSON to "{ \"items\": [" & output & "] }"
	return alfredJSON
end run
