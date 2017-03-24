��    K      t              �  �   �  �   R  J     ,   a  B   �  1   �       x        �  m   �  �        �  O   �  �   	     �	     
  A  
     _     k     q     w  :   �  �   �     �    �     �     �           +  5  u   a  5   �  �     p   �  e  [  �   �  �   U  7  ?  _   w  �  �  L   �  �     �     �   �  �   �  j   �  �     �     �   �  �   e   z   !  5  �!  �   �"  a   >#     �#     �#  ?   �#  �   �#  �   �$  �   t%     &     )&  
   5&     @&     M&     Y&  <  e&  �  �'  #   Q)     u)     �)     �)     �)     �)  I  �)  �   D+  �   �+  J   �,  ,   �,  B   -  1   H-     z-  x   �-     .  m   .  �   �.     /  O   ;/  �   �/     t0     �0  A  �0     �1     �1     �1     �1  :   2  �   @2     3    #3     A4     `4     z4    �4  +  �5  u   �7  5   N8  �   �8  p   a9  e  �9  �   8;  �   �;  7  �<  _   �=  �  N>  L   I@  �   �@  �   �A  �   jB  �   8C  j   D  �   �D  �   E  �   EF  �   �F  z   �G  5  �G  �   4I  a   �I     J     $J  ?   3J  �   sJ  �   K  �   �K     �L     �L  
   �L     �L     �L     �L  <  �L  �  N  #   �O     �O     P     P     ;P     VP   *Foundations of Python Network Programminng, 3/E* By Brandon Rhodes and John Goerzen. Published by Apress, 2014. ISBN-10: 1430258543 *Unix Network Programming, Volume 1: The Sockets Networking API, 3/E* By W. Richard Stevens, Bill Fenner, and Andrew M. Rudoff. Published by Addison-Wesley Professional, 2004. ISBN-10: 0131411551 :mod:`SocketServer` -- Framework for creating network server applications. :mod:`asyncio` -- Asynchronous I/O framework :mod:`selectors` -- Higher-level abstraction on top of ``select``. :mod:`socket` -- Low-level network communication. :pydoc:`select` A readable socket *without* data available is from a client that has disconnected, and the stream is ready to be closed. Able to receive output An echo server built on ``poll()`` starts with the same socket configuration code used in the other examples. An empty string returned by ``recv()`` means the client disconnected, so ``unregister()`` is used to tell the ``poll`` object to ignore the socket. And this is the client output: And, finally, any events with ``POLLERR`` cause the server to close the socket. As with ``select()``, when the main server socket is "readable," that really means there is a pending connection from a client.  The new connection is registered with the ``READ_ONLY`` flags to watch for new data to come through it. Channel closed Channel not open Connections are added to and removed from these lists by the server main loop.  Since this version of the server is going to wait for a socket to become writable before sending any data (instead of immediately sending the reply), each output connection needs a queue to act as a buffer for the data to be sent through it. Description Error Event Event Flags for poll() Finally, if there is an error with a socket, it is closed. If ``recv()`` returns any data, it is placed into the outgoing queue for the socket, and the flags for that socket are changed using ``modify()`` so ``poll()`` will watch for the socket to be ready to receive data. Input ready Less portable options provided by ``select`` are ``epoll``, the *edge polling* API supported by Linux; ``kqueue``, which uses BSD's *kernel queue*; and ``kevent``, BSD's *kernel event* interface.  Refer to the operating system library documentation for more detail about how they work. Non-blocking I/O With Timeouts Platform-specific Options Priority input ready Python implements ``poll()`` with a class that manages the registered data channels being monitored.  Channels are added by calling ``register()`` with flags indicating which events are interesting for that channel.  The full set of flags is listed in :table:`Event Flags for poll()`. Python's ``select()`` function is a direct interface to the underlying operating system implementation.  It monitors sockets, open files, and pipes (anything with a ``fileno()`` method that returns a valid file descriptor) until they become readable or writable or a communication error occurs.  ``select()`` makes it easier to monitor multiple connections at the same time, and is more efficient than writing a polling loop in Python using socket timeouts, because the monitoring happens in the operating system network layer, instead of the interpreter. Run the server in one window and the client in another.  The output will look like this, with different port numbers. Running the new server with the slow client produces: Since ``poll()`` returns a list of tuples containing the file descriptor for the socket and the event flag, a mapping from file descriptor numbers to objects is needed to retrieve the ``socket`` to read or write from it. Sockets other than the server are existing clients and ``recv()`` is used to access the data waiting to be read. The "readable" sockets represent three possible cases.  If the socket is the main "server" socket, the one being used to listen for connections, then the "readable" condition means it is ready to accept another incoming connection.  In addition to adding the new connection to the list of inputs to monitor, this section sets the client socket to not block. The ``POLLHUP`` flag indicates a client that "hung up" the connection without closing it cleanly.  The server stops polling clients that disappear. The ``poll()`` function provides similar features to ``select()``, but the underlying implementation is more efficient.  The trade-off is that ``poll()`` is not supported under Windows, so programs using ``poll()`` are less portable. The ``select`` module provides access to platform-specific I/O monitoring functions.  The most portable interface is the POSIX function ``select()``, which is available on Unix and Windows.  The module also includes ``poll()``, a Unix-only API, and several options that only work with specific variants of Unix. The ``server`` socket is registered so that any incoming connections or data triggers an event. The arguments to ``select()`` are three lists containing communication channels to monitor.  The first is a list of the objects to be checked for incoming data to be read, the second contains objects that will receive outgoing data when there is room in their buffer, and the third those that may have an error (usually a combination of the input and output channel objects).  The next step in the server is to set up the lists containing input sources and output destinations to be passed to ``select()``. The client output shows the data being sent and received using both sockets. The echo server example from the :mod:`socket` section can be extended to watch for more than one connection at a time by using ``select()``.  The new version starts out by creating a non-blocking TCP/IP socket and configuring it to listen on an address. The echo server will be setting up some sockets just for reading and others to be read from or written to.  The appropriate combinations of flags are saved to the local variables ``READ_ONLY`` and ``READ_WRITE``. The example client program uses two sockets to demonstrate how the server with ``select()`` manages multiple connections at the same time.  The client starts by connecting each TCP/IP socket to the server. The handling for writable sockets looks like the version used in the example for ``select()``, except that ``modify()`` is used to change the flags for the socket in the poller, instead of removing it from the output list. The main portion of the server program loops, calling ``select()`` to block and wait for network activity. The new :mod:`selectors` module provides a higher-level interface built on top of the APIs in ``select``. It is easier to build portable code using ``selectors``, so use that module unless the low-level APIs provided by ``select`` are somehow required. The next case is an established connection with a client that has sent data.  The data is read with ``recv()``, then placed on the queue so it can be sent through the socket and back to the client. The server's loop calls ``poll()`` and then processes the "events" returned by looking up the socket and taking action based on the flag in the event. The timeout value passed to ``poll()`` is represented in milliseconds, instead of seconds, so in order to pause for a full second the timeout must be set to ``1000``. Then it sends one piece of the message at a time via each socket and reads all responses available after writing new data. There are fewer cases for the writable connections.  If there is data in the queue for a connection, the next message is sent.  Otherwise, the connection is removed from the list of output connections so that the next time through the loop ``select()`` does not indicate that the socket is ready to send data. This "slow" version of the client program pauses after sending each message, to simulate latency or other delay in transmission. Using Python's file objects with ``select()`` works for Unix, but is not supported under Windows. Using poll() Using select() Wait for notification that an input or output channel is ready. When the poll-based server is run together with ``select_echo_multiclient.py`` (the client program that uses multiple sockets), this is the output. When the timeout expires, ``select()`` returns three empty lists. Updating the server example to use a timeout requires adding the extra argument to the ``select()`` call and handling the empty lists after ``select()`` returns. `Socket Programming HOWOTO <https://docs.python.org/howto/sockets.html>`__ -- An instructional guide by Gordon McMillan, included in the standard library documentation. ``POLLERR`` ``POLLHUP`` ``POLLIN`` ``POLLNVAL`` ``POLLOUT`` ``POLLPRI`` ``select()`` also takes an optional fourth parameter, which is the number of seconds to wait before breaking off monitoring if no channels have become active.  Using a timeout value lets a main program call ``select()`` as part of a larger processing loop, taking other actions in between checking for network input. ``select()`` returns three new lists, containing subsets of the contents of the lists passed in.  All of the sockets in the ``readable`` list have incoming data buffered and available to be read.  All of the sockets in the ``writable`` list have free space in their buffer and can be written to.  The sockets returned in ``exceptional`` have had an error (the actual definition of "exceptional condition" depends on the platform). select --- Wait for I/O Efficiently select_echo_multiclient.py select_echo_server.py select_echo_server_timeout.py select_echo_slow_client.py select_poll_echo_server.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 *Foundations of Python Network Programminng, 3/E* By Brandon Rhodes and John Goerzen. Published by Apress, 2014. ISBN-10: 1430258543 *Unix Network Programming, Volume 1: The Sockets Networking API, 3/E* By W. Richard Stevens, Bill Fenner, and Andrew M. Rudoff. Published by Addison-Wesley Professional, 2004. ISBN-10: 0131411551 :mod:`SocketServer` -- Framework for creating network server applications. :mod:`asyncio` -- Asynchronous I/O framework :mod:`selectors` -- Higher-level abstraction on top of ``select``. :mod:`socket` -- Low-level network communication. :pydoc:`select` A readable socket *without* data available is from a client that has disconnected, and the stream is ready to be closed. Able to receive output An echo server built on ``poll()`` starts with the same socket configuration code used in the other examples. An empty string returned by ``recv()`` means the client disconnected, so ``unregister()`` is used to tell the ``poll`` object to ignore the socket. And this is the client output: And, finally, any events with ``POLLERR`` cause the server to close the socket. As with ``select()``, when the main server socket is "readable," that really means there is a pending connection from a client.  The new connection is registered with the ``READ_ONLY`` flags to watch for new data to come through it. Channel closed Channel not open Connections are added to and removed from these lists by the server main loop.  Since this version of the server is going to wait for a socket to become writable before sending any data (instead of immediately sending the reply), each output connection needs a queue to act as a buffer for the data to be sent through it. Description Error Event Event Flags for poll() Finally, if there is an error with a socket, it is closed. If ``recv()`` returns any data, it is placed into the outgoing queue for the socket, and the flags for that socket are changed using ``modify()`` so ``poll()`` will watch for the socket to be ready to receive data. Input ready Less portable options provided by ``select`` are ``epoll``, the *edge polling* API supported by Linux; ``kqueue``, which uses BSD's *kernel queue*; and ``kevent``, BSD's *kernel event* interface.  Refer to the operating system library documentation for more detail about how they work. Non-blocking I/O With Timeouts Platform-specific Options Priority input ready Python implements ``poll()`` with a class that manages the registered data channels being monitored.  Channels are added by calling ``register()`` with flags indicating which events are interesting for that channel.  The full set of flags is listed in :table:`Event Flags for poll()`. Python's ``select()`` function is a direct interface to the underlying operating system implementation.  It monitors sockets, open files, and pipes (anything with a ``fileno()`` method that returns a valid file descriptor) until they become readable or writable or a communication error occurs.  ``select()`` makes it easier to monitor multiple connections at the same time, and is more efficient than writing a polling loop in Python using socket timeouts, because the monitoring happens in the operating system network layer, instead of the interpreter. Run the server in one window and the client in another.  The output will look like this, with different port numbers. Running the new server with the slow client produces: Since ``poll()`` returns a list of tuples containing the file descriptor for the socket and the event flag, a mapping from file descriptor numbers to objects is needed to retrieve the ``socket`` to read or write from it. Sockets other than the server are existing clients and ``recv()`` is used to access the data waiting to be read. The "readable" sockets represent three possible cases.  If the socket is the main "server" socket, the one being used to listen for connections, then the "readable" condition means it is ready to accept another incoming connection.  In addition to adding the new connection to the list of inputs to monitor, this section sets the client socket to not block. The ``POLLHUP`` flag indicates a client that "hung up" the connection without closing it cleanly.  The server stops polling clients that disappear. The ``poll()`` function provides similar features to ``select()``, but the underlying implementation is more efficient.  The trade-off is that ``poll()`` is not supported under Windows, so programs using ``poll()`` are less portable. The ``select`` module provides access to platform-specific I/O monitoring functions.  The most portable interface is the POSIX function ``select()``, which is available on Unix and Windows.  The module also includes ``poll()``, a Unix-only API, and several options that only work with specific variants of Unix. The ``server`` socket is registered so that any incoming connections or data triggers an event. The arguments to ``select()`` are three lists containing communication channels to monitor.  The first is a list of the objects to be checked for incoming data to be read, the second contains objects that will receive outgoing data when there is room in their buffer, and the third those that may have an error (usually a combination of the input and output channel objects).  The next step in the server is to set up the lists containing input sources and output destinations to be passed to ``select()``. The client output shows the data being sent and received using both sockets. The echo server example from the :mod:`socket` section can be extended to watch for more than one connection at a time by using ``select()``.  The new version starts out by creating a non-blocking TCP/IP socket and configuring it to listen on an address. The echo server will be setting up some sockets just for reading and others to be read from or written to.  The appropriate combinations of flags are saved to the local variables ``READ_ONLY`` and ``READ_WRITE``. The example client program uses two sockets to demonstrate how the server with ``select()`` manages multiple connections at the same time.  The client starts by connecting each TCP/IP socket to the server. The handling for writable sockets looks like the version used in the example for ``select()``, except that ``modify()`` is used to change the flags for the socket in the poller, instead of removing it from the output list. The main portion of the server program loops, calling ``select()`` to block and wait for network activity. The new :mod:`selectors` module provides a higher-level interface built on top of the APIs in ``select``. It is easier to build portable code using ``selectors``, so use that module unless the low-level APIs provided by ``select`` are somehow required. The next case is an established connection with a client that has sent data.  The data is read with ``recv()``, then placed on the queue so it can be sent through the socket and back to the client. The server's loop calls ``poll()`` and then processes the "events" returned by looking up the socket and taking action based on the flag in the event. The timeout value passed to ``poll()`` is represented in milliseconds, instead of seconds, so in order to pause for a full second the timeout must be set to ``1000``. Then it sends one piece of the message at a time via each socket and reads all responses available after writing new data. There are fewer cases for the writable connections.  If there is data in the queue for a connection, the next message is sent.  Otherwise, the connection is removed from the list of output connections so that the next time through the loop ``select()`` does not indicate that the socket is ready to send data. This "slow" version of the client program pauses after sending each message, to simulate latency or other delay in transmission. Using Python's file objects with ``select()`` works for Unix, but is not supported under Windows. Using poll() Using select() Wait for notification that an input or output channel is ready. When the poll-based server is run together with ``select_echo_multiclient.py`` (the client program that uses multiple sockets), this is the output. When the timeout expires, ``select()`` returns three empty lists. Updating the server example to use a timeout requires adding the extra argument to the ``select()`` call and handling the empty lists after ``select()`` returns. `Socket Programming HOWOTO <https://docs.python.org/howto/sockets.html>`__ -- An instructional guide by Gordon McMillan, included in the standard library documentation. ``POLLERR`` ``POLLHUP`` ``POLLIN`` ``POLLNVAL`` ``POLLOUT`` ``POLLPRI`` ``select()`` also takes an optional fourth parameter, which is the number of seconds to wait before breaking off monitoring if no channels have become active.  Using a timeout value lets a main program call ``select()`` as part of a larger processing loop, taking other actions in between checking for network input. ``select()`` returns three new lists, containing subsets of the contents of the lists passed in.  All of the sockets in the ``readable`` list have incoming data buffered and available to be read.  All of the sockets in the ``writable`` list have free space in their buffer and can be written to.  The sockets returned in ``exceptional`` have had an error (the actual definition of "exceptional condition" depends on the platform). select --- Wait for I/O Efficiently select_echo_multiclient.py select_echo_server.py select_echo_server_timeout.py select_echo_slow_client.py select_poll_echo_server.py 