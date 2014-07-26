Shellshock
==========
Print a colourful random message in your Shell. For example, fun to add to *SSH login/logout*.

Usage
-----
Just add <code>ruby CLONE_DIRECTORY/Shellshock/shellshock.rb; sleep 1</code> to your desired execution file. For example, to display a message on
SSH logout of a server simply add the above line to your user's <code>~/.bash_logout</code> file on the server.

To add your own custom random messages, simply create a new file in the <code>messages</code> directory with your ASCII art. To generate
the art I recommend using http://patorjk.com/software/taag/ or http://www.network-science.de/ascii/ and contributing them back is welcome (see *Contribute* below).

Examples
--------
![](https://github.com/daniel-middleton/Shellshock/blob/master/screenshot.png)

Contribute
----------
As always, any contributions (for example, more messages/graphics) are welcome. Simply open a *Pull Request*.

Credits
-------
*Shellshock* was adapted from and inspired by the Gists of *Daniel Rehn* (danielrehn) and *Sean Linsley* (seanlinsley).