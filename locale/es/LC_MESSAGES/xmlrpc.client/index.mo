��    6      �              |  4   }  9   �     �  �     B  �     �  �   �  .   �      �     �  
   �     �  �     �   �  i   *  �   �  �   %	  0  �	     �
  �     �   �  �   z  �   )  ]   �  �     P   �  �   %  �   �  6   D     {  �   �  K   K    �  �   �  �   �  �   p  �   5  �   �  �   �  ,   �     �     �     �     �           )  "   H     k     �     �     �     �     �  I  �  4   6  9   k     �  �   �  B  V     �  �   �  .   C      r     �  
   �     �  �   �  �   Y  i   �  �   M  �   �  0  �      �!  �   �!  �   �"  �   3#  �   �#  ]   j$  �   �$  P   �%  �   �%  �   z&  6   �&     4'  �   I'  K   (    P(  �   U)  �   F*  �   )+  �   �+  �   �,  �   H-  ,   ;.     h.     y.     �.     �.      �.     �.  "   /     $/     B/     V/     g/     w/     �/   :mod:`http.server` -- An HTTP server implementation. :mod:`xmlrpc.server` -- An XML-RPC server implementation. :pydoc:`xmlrpc.client` All of the examples in this section use the server defined in ``xmlrpc_server.py``, available in the source distribution and included here for reference. All values passed to the server are encoded and escaped automatically. However, some data types may contain characters that are not valid XML. For example, binary image data may include byte values in the ASCII control range 0 to 31.  To pass binary data, it is best to use the ``Binary`` class to encode it for transport. Binary Data By default an internal version of ``DateTime`` is used, but the ``use_datetime`` option turns on support for using the classes in the :mod:`datetime` module. Client-side library for XML-RPC communication. Combining Calls Into One Message Connecting to a Server Data Types Exception Handling If one of the calls causes a ``Fault``, the exception is raised when the result is produced from the iterator and no more results are available. If the string containing a NULL byte is passed to ``show_type()``, an exception is raised in the XML parser as it processes the response. In this case, the ``ping()`` method of the service takes no arguments and returns a single Boolean value. Instances of Python classes are treated as structures and passed as a dictionary, with the attributes of the object as values in the dictionary. Multicall is an extension to the XML-RPC protocol that allows more than one call to be sent at the same time, with the responses collected and returned to the caller. Other options are available to support alternate transport. Both HTTP and HTTPS are supported out of the box, both with basic authentication. To implement a new communication channel, only a new transport class is needed.  It could be an interesting exercise, for example, to implement XML-RPC over SMTP. Passing Objects Since the XML-RPC server might be written in any language, exception classes cannot be transmitted directly. Instead, exceptions raised in the server are converted to ``Fault`` objects and raised as exceptions locally in the client. Since the third response, from ``raises_exception()``, generates an exception, the response from ``show_type()`` is not accessible. The XML-RPC protocol recognizes a limited set of common data types. The types can be passed as arguments or return values and combined to create more complex data structures. The ``allow_none`` option controls whether Python's ``None`` value is automatically translated to a nil value or if it causes an error. The ``verbose`` option gives debugging information useful for resolving communication errors. The data attribute of the ``Binary`` instance contains the pickled version of the object, so it has to be unpickled before it can be used. That results in a different object (with a new id value). The default encoding can be changed from UTF-8 if an alternate system is needed. The error is raised locally if the client does not allow ``None``, but can also be raised from within the server if it is not configured to allow ``None``. The original error message is saved in the :attr:`faultString` attribute, and :attr:`faultCode` is set to an XML-RPC error number. The server automatically detects the correct encoding. The simple types are The simplest way to connect a client to a server is to instantiate a ``ServerProxy`` object, giving it the URI of the server. For example, the demo server runs on port 9000 of localhost. The supported types can be nested to create values of arbitrary complexity. This program passes a list of dictionaries containing all of the supported types to the sample server, which returns the data.  Tuples are converted to lists and ``datetime`` instances are converted to ``DateTime`` objects, but otherwise the data is unchanged. To use a ``MultiCall`` instance, invoke the methods on it as with a ``ServerProxy``, then call the object with no arguments to actually run the remote functions. The return value is an iterator that yields the results from all of the calls. When the value is sent back to the client from the server the result is a dictionary on the client, since there is nothing encoded in the values to tell the server (or client) that it should be instantiated as part of a class. XML-RPC is a lightweight remote procedure call protocol built on top of HTTP and XML.  The :mod:`xmlrpclib` module lets a Python program communicate with an XML-RPC server written in any language. XML-RPC supports dates as a native type, and :mod:`xmlrpclib` can use one of two classes to represent the date values in the outgoing proxy or when they are received from the server. `XML-RPC How To <http://www.tldp.org/HOWTO/XML-RPC-HOWTO/index.html>`_ -- Describes how to use XML-RPC to implement clients and servers in a variety of languages. ``Binary`` objects can also be used to send objects using :mod:`pickle`. The normal security issues related to sending what amounts to executable code over the wire apply here (i.e., do not do this unless the communication channel is secure). xmlrpc.client --- Client Library for XML-RPC xmlrpc_Binary.py xmlrpc_MultiCall.py xmlrpc_MultiCall_exception.py xmlrpc_ServerProxy.py xmlrpc_ServerProxy_allow_none.py xmlrpc_ServerProxy_encoding.py xmlrpc_ServerProxy_use_datetime.py xmlrpc_ServerProxy_verbose.py xmlrpc_exception.py xmlrpc_server.py xmlrpc_types.py xmlrpc_types_nested.py xmlrpc_types_object.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 :mod:`http.server` -- An HTTP server implementation. :mod:`xmlrpc.server` -- An XML-RPC server implementation. :pydoc:`xmlrpc.client` All of the examples in this section use the server defined in ``xmlrpc_server.py``, available in the source distribution and included here for reference. All values passed to the server are encoded and escaped automatically. However, some data types may contain characters that are not valid XML. For example, binary image data may include byte values in the ASCII control range 0 to 31.  To pass binary data, it is best to use the ``Binary`` class to encode it for transport. Binary Data By default an internal version of ``DateTime`` is used, but the ``use_datetime`` option turns on support for using the classes in the :mod:`datetime` module. Client-side library for XML-RPC communication. Combining Calls Into One Message Connecting to a Server Data Types Exception Handling If one of the calls causes a ``Fault``, the exception is raised when the result is produced from the iterator and no more results are available. If the string containing a NULL byte is passed to ``show_type()``, an exception is raised in the XML parser as it processes the response. In this case, the ``ping()`` method of the service takes no arguments and returns a single Boolean value. Instances of Python classes are treated as structures and passed as a dictionary, with the attributes of the object as values in the dictionary. Multicall is an extension to the XML-RPC protocol that allows more than one call to be sent at the same time, with the responses collected and returned to the caller. Other options are available to support alternate transport. Both HTTP and HTTPS are supported out of the box, both with basic authentication. To implement a new communication channel, only a new transport class is needed.  It could be an interesting exercise, for example, to implement XML-RPC over SMTP. Passing Objects Since the XML-RPC server might be written in any language, exception classes cannot be transmitted directly. Instead, exceptions raised in the server are converted to ``Fault`` objects and raised as exceptions locally in the client. Since the third response, from ``raises_exception()``, generates an exception, the response from ``show_type()`` is not accessible. The XML-RPC protocol recognizes a limited set of common data types. The types can be passed as arguments or return values and combined to create more complex data structures. The ``allow_none`` option controls whether Python's ``None`` value is automatically translated to a nil value or if it causes an error. The ``verbose`` option gives debugging information useful for resolving communication errors. The data attribute of the ``Binary`` instance contains the pickled version of the object, so it has to be unpickled before it can be used. That results in a different object (with a new id value). The default encoding can be changed from UTF-8 if an alternate system is needed. The error is raised locally if the client does not allow ``None``, but can also be raised from within the server if it is not configured to allow ``None``. The original error message is saved in the :attr:`faultString` attribute, and :attr:`faultCode` is set to an XML-RPC error number. The server automatically detects the correct encoding. The simple types are The simplest way to connect a client to a server is to instantiate a ``ServerProxy`` object, giving it the URI of the server. For example, the demo server runs on port 9000 of localhost. The supported types can be nested to create values of arbitrary complexity. This program passes a list of dictionaries containing all of the supported types to the sample server, which returns the data.  Tuples are converted to lists and ``datetime`` instances are converted to ``DateTime`` objects, but otherwise the data is unchanged. To use a ``MultiCall`` instance, invoke the methods on it as with a ``ServerProxy``, then call the object with no arguments to actually run the remote functions. The return value is an iterator that yields the results from all of the calls. When the value is sent back to the client from the server the result is a dictionary on the client, since there is nothing encoded in the values to tell the server (or client) that it should be instantiated as part of a class. XML-RPC is a lightweight remote procedure call protocol built on top of HTTP and XML.  The :mod:`xmlrpclib` module lets a Python program communicate with an XML-RPC server written in any language. XML-RPC supports dates as a native type, and :mod:`xmlrpclib` can use one of two classes to represent the date values in the outgoing proxy or when they are received from the server. `XML-RPC How To <http://www.tldp.org/HOWTO/XML-RPC-HOWTO/index.html>`_ -- Describes how to use XML-RPC to implement clients and servers in a variety of languages. ``Binary`` objects can also be used to send objects using :mod:`pickle`. The normal security issues related to sending what amounts to executable code over the wire apply here (i.e., do not do this unless the communication channel is secure). xmlrpc.client --- Client Library for XML-RPC xmlrpc_Binary.py xmlrpc_MultiCall.py xmlrpc_MultiCall_exception.py xmlrpc_ServerProxy.py xmlrpc_ServerProxy_allow_none.py xmlrpc_ServerProxy_encoding.py xmlrpc_ServerProxy_use_datetime.py xmlrpc_ServerProxy_verbose.py xmlrpc_exception.py xmlrpc_server.py xmlrpc_types.py xmlrpc_types_nested.py xmlrpc_types_object.py 