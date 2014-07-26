Shellshock
==========
Print a colourful random message in your Shell. For example, fun to add on SSH login/logout.

Usage
=====
Just add "ruby CLONE_DIRECTORY/Shellshock/shellshock.rb; sleep 1" to your desired execution file. For example, to display a message on
SSH logout of a server simply add the above line to your user's "~/.bash_logout" file on the server.

To add your own custom random message, simply create a new file in the "messages" directory with your ASCII art. To generate
the art I recommend: http://patorjk.com/software/taag/ or http://www.network-science.de/ascii/ and contributing them back is welcome.

Examples
========
![](https://github.com/daniel-middleton/Shellshock/blob/master/screenshot.png)

Contribute
==========
As always, any contributions (for example, more messages/graphics) are welcome. Simply open a Pull Request.

Credits
=======
Shellshock was adapted from and inspired by the Gists of Daniel Rehn (danielrehn) and Sean Linsley (seanlinsley).