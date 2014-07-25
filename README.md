Shellshock
==========
Print a colourful random message in your Shell. Fun to add, for example, as an SSH login/logout graphic.

Usage
=====
Just add "ruby location_of_script/shellshock.rb; sleep 1" to your desired execution file. For example, to display a message on
SSH logout of a server, add the above line to "~/.bash_logout".

To add a custom random message, simply create a new file in the "messages" directory with your ASCII art. To generate
the art, I recommend: http://patorjk.com/software/taag/