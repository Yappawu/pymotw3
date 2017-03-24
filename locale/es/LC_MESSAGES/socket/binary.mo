��          t               �   A   �   ,        <     Y  �   m  �  b  �   �  k  �     	     !  I  9  A   �  ,   �     �       �   #  �  	  �   �
  k  S     �     �   :mod:`struct` -- Converting between strings and other data types. And the server shows the values it receives: Running the client produces: Sending Binary Data Sockets transmit streams of bytes.  Those bytes can contain text messages encoded to bytes, as in the previous examples, or they can be made up of binary data that has been packed into a buffer with :mod:`struct` to prepare it for transmission. The floating point value loses some precision as it is packed and unpacked, but otherwise the data is transmitted as expected.  One thing to keep in mind is that depending on the value of the integer, it may be more efficient to convert it to text and then transmit, instead of using ``struct``.  The integer ``1`` uses one byte when represented as a string, but four when packed into the structure. This client program encodes an integer, a string of two characters, and a floating point value into a sequence of bytes that can be passed to the socket for transmission. When sending multi-byte binary data between two systems, it is important to ensure that both sides of the connection know what order the bytes are in and how to assemble them back into the correct order for the local architecture.  The server program uses the same ``Struct`` specifier to unpack the bytes it receives so they are interpreted in the correct order. socket_binary_client.py socket_binary_server.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 :mod:`struct` -- Converting between strings and other data types. And the server shows the values it receives: Running the client produces: Sending Binary Data Sockets transmit streams of bytes.  Those bytes can contain text messages encoded to bytes, as in the previous examples, or they can be made up of binary data that has been packed into a buffer with :mod:`struct` to prepare it for transmission. The floating point value loses some precision as it is packed and unpacked, but otherwise the data is transmitted as expected.  One thing to keep in mind is that depending on the value of the integer, it may be more efficient to convert it to text and then transmit, instead of using ``struct``.  The integer ``1`` uses one byte when represented as a string, but four when packed into the structure. This client program encodes an integer, a string of two characters, and a floating point value into a sequence of bytes that can be passed to the socket for transmission. When sending multi-byte binary data between two systems, it is important to ensure that both sides of the connection know what order the bytes are in and how to assemble them back into the correct order for the local architecture.  The server program uses the same ``Struct`` specifier to unpack the bytes it receives so they are interpreted in the correct order. socket_binary_client.py socket_binary_server.py 