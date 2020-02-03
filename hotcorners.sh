# Get user logged into console and put into variable "user"
user=`ls -l /dev/console | cut -d " " -f 4`
    ###
    #   Set hotcorner actions.  Disable "Disable Screen Saver" when found.
    ###
    ## The following are the values of each option in the GUI
    # Start Screen Saver = 5
    #   Modifier = 0
    # Disable Screen Saver = 6
    #   Modifier = 0
    # Mission Control = 2
    #   Modifier = 0
    # Application Windows = 3
    #   Modifier = 0
    # Desktop = 4
    #   Modifier = 0
    # Dashboard = 7
    #   Modifier = 0
    # Notification Center = 12
    #   Modifier = 0
    # Launchpad = 11 
    #   Modifier = 0
    # Put Display to Sleep = 10
    #   Modifier = 0
    # None = 1
    #   Modifier = 1048576
    ##
    a=`defaults read /Users/$user/Library/Preferences/com.apple.dock.plist | grep  "\-corner\""`
    for corner in $a
    do
     echo "$corner"
     # if [ "$cornerval" = "6" ];
     # then
     #    echo User:Hotcorner - Disable screensaver found on $corner, fixing...
     #    # Setting the corner action to 1(None)
     #    sudo -u $user defaults write /Users/$user/Library/Preferences/com.apple.dock.plist $corner-corner -int 1
     #    sudo -u $user defaults write /Users/$user/Library/Preferences/com.apple.dock.plist $corner-modifier -int 1048576
     #    changesmade="yes"
     # fi
    done
    # ##
    # #  Set bottom left corner of the screen "hotcorner" action to immediately invoke the  screensaver
    # ##
    # needsFixed=0
    # defaults read /Users/$user/Library/Preferences/com.apple.dock.plist| grep bl-corner | grep 5 > /dev/null
    # if [ $? != 0 ]; then needsFixed=1;fi
    # defaults read /Users/$user/Library/Preferences/com.apple.dock.plist | grep bl-modifier | grep -i "\s0;" > /dev/null
    # if [ $? != 0 ]; then needsFixed=1;fi
    # if [ $needsFixed == 1 ];
    # then
    #     sudo -u $user defaults write /Users/$user/Library/Preferences/com.apple.dock.plist wvous-bl-corner -int 5
    #     sudo -u $user defaults write /Users/$user/Library/Preferences/com.apple.dock.plist wvous-bl-modifier -int 0
    #     changesmade="yes"
    # fi

    # # If changes were made then the dock needs to be restarted for them to take affect
    # if [ "$changesmade" = "yes" ]; then sudo killall -hup cfprefsd; sudo killall -hup Dock; fi


