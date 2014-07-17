#!/bin/sh

# A here script (also sometimes called a here document) is an additional form
# of I/O redirection. It provides a way to include content that will be given
# to the standard input of a command.
#
# A here script is constructed like this:
#
#   command << token
#   content to be used as command's standard input
#   token
#
# token can be any string of characters. _EOF_ is just a traditional one, but
# you can use anything, as long as it does not conflict with a bash reserved
# word. The token that ends the here script must exactly match the one that
# starts it.

title="System Information for"

cat << _EOF_
<HTML>
<HEAD>
    <TITLE>
    $title $HOSTNAME
    </TITLE>
</HEAD>

<BODY>
<H1>$title $HOSTNAME</H1>
<P>Updated on $(date +"%x %r %z") by $USER
</BODY>
</HTML>
_EOF_

# Changing the "<<" to "<<-" causes bash to ignore the leading tabs (but not
# spaces) in the here script.
cat <<- _EOF_
	public class HelloWorld {
	
	    public static void main(String[] args) {
	        System.out.println("Hello world!");
	    }
	
	}
_EOF_
