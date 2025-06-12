#!/usr/bin/osascript

property frontmostSheet : null

on run argv
	set theApp to item 1 of argv
	if theApp is "Finder" then
		set canContinue to true
		set getContainer to false
	else
		set canContinue to false
		set isValidDialog to false
		set getContainer to true
		set buttonNames to commaSeparatedTextToList(system attribute "button_names", true)
		tell application "System Events"
			tell application process theApp
				repeat with aWindow in windows
					set theElement to my getFrontmostSheet(theApp, aWindow)
					if theElement is not null then
						set isValidDialog to my checkButtons(theElement, buttonNames)
					else
						set theElement to aWindow
						set isValidDialog to my checkButtons(theElement, buttonNames)
					end if
					if isValidDialog is true then
						set canContinue to true
						perform action "AXRaise" of theElement
						delay 0.1
						exit repeat
					end if
				end repeat
			end tell
		end tell
	end if
	return {canContinue, getContainer}
end run

on commaSeparatedTextToList(theText, doTrim)
	set {tid, text item delimiters} to {text item delimiters, ","}
	set theList to {}
	repeat with i in text items of theText
		if doTrim is true then
			set end of theList to trim(i)
		else
			set end of theList to i as text
		end if
	end repeat
	set text item delimiters to tid
	return theList
end commaSeparatedTextToList

on trim(theText)
	return (do shell script "echo \"" & theText & "\" | xargs")
end trim

on getFrontmostSheet(a, el)
	tell application "System Events"
		try
			set elCheck to sheet 1 of el
			set frontmostSheet to elCheck
			my getFrontmostSheet(a, elCheck)
		on error theError
		end try
		return frontmostSheet
	end tell
end getFrontmostSheet

on checkButtons(element, btnNames)
	set checkButtonsResult to false
	tell application "System Events"
		repeat with aButton in buttons of element
			if btnNames contains name of aButton then
				set checkButtonsResult to true
				exit repeat
			end if
		end repeat
	end tell
	return checkButtonsResult
end checkButtons
