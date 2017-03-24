��    )      d              �  W   �  (        .  A   >  �   �  {  2  q   �        %   4  a   Z     �  y  �     W
  %   l
     �
  =   �
  -  �
  <    �   [  y  /    �  S   �  4    ,  N  �   {    g  H   i     �  \   �  T  #     x  �   �          >     N     g     �     �     �     �  I  �  W     (   i     �  A   �  �   �  {  �  q        �  %   �  a   �        y  A      �!  %   �!     �!  =   "  -  T"  <  �#  �   �$  y  �%    '  S   )(  4  }(  ,  �)  �   �*    �+  H   �,     -  \   *-  T  �-     �.  �   �.     �/     �/     �/     �/     �/     �/     0     0   :mod:`shelve` -- The ``shelve`` module uses ``pickle`` to store data in a DBM database. :pep:`3154` -- Pickle protocol version 4 :pydoc:`pickle` A simplistic attempt to load the resulting pickled objects fails. After the data is serialized, it can be written to a file, socket, pipe, etc.  Later, the file can be read and the data unpickled to construct a new object with the same values. Besides storing data, pickles are handy for inter-process communication. For example, ``os.fork()`` and ``os.pipe()`` can be used to establish worker processes that read job instructions from one pipe and write the results to another pipe. The core code for managing the worker pool and sending jobs in and receiving responses can be reused, since the job and response objects do not have to be based on a particular class. When using pipes or sockets, do not forget to flush after dumping each object, to push the data through the connection to the other end.  See the :mod:`multiprocessing` module for a reusable worker pool manager. By default, the pickle will be written in a binary format most compatible when sharing between Python 3 programs. Circular References Encoding and Decoding Data in Strings If the return value is false, then ``__setstate__()`` is not called when the object is unpickled. In addition to ``dumps()`` and ``loads()``, ``pickle`` provides convenience functions for working with file-like streams. It is possible to write multiple objects to a stream, and then read them from the stream without knowing in advance how many objects are written, or how big they are. Not all objects can be pickled. Sockets, file handles, database connections, and other objects with runtime state that depends on the operating system or another process may not be able to be saved in a meaningful way. Objects that have non-picklable attributes can define ``__getstate__()`` and ``__setstate__()`` to return a subset of the state of the instance to be pickled. Object serialization Pickling a Data Structure With Cycles Problems Reconstructing Objects Running the modified script now produces the desired results. The ``__getstate__()`` method must return an object containing the internal state of the object. One convenient way to represent that state is with a dictionary, but the value can be any picklable object. The state is stored, and passed to ``__setstate__()`` when the object is loaded from the pickle. The ``pickle`` module implements an algorithm for turning an arbitrary Python object into a series of bytes.  This process is also called *serializing* the object. The byte stream representing the object can then be transmitted or stored, and later reconstructed to create a new object with the same characteristics. The corrected version, which imports ``SimpleObject`` from the original script, succeeds.  Adding this import statement to the end of the import list allows the script to find the class and construct the object. The documentation for ``pickle`` makes clear that it offers no security guarantees. In fact, unpickling data can execute arbitrary code.  Be careful using ``pickle`` for inter-process communication or data storage, and do not trust data that cannot be verified as secure.  See the :mod:`hmac` module for an example of a secure way to verify the source of a pickled data source. The example simulates streams using two ``BytesIO`` buffers.  The first receives the pickled objects, and its value is fed to a second from which ``load()`` reads.  A simple database format could use pickles to store objects, too. The :mod:`shelve` module is one such implementation. The newly constructed object is equal to, but not the same object as, the original. The pickle protocol automatically handles circular references between objects, so complex data structures do not need any special handling. Consider the directed graph in :figure:`Pickling a Data Structure With Cycles`.  It includes several cycles, yet the correct structure can be pickled and then reloaded. The reloaded nodes are not the same object, but the relationship between the nodes is maintained and only one copy of the object with multiple references is reloaded. Both of these statements can be verified by examining the ``id()`` values for the nodes before and after being passed through pickle. This example uses a separate ``State`` object to hold the internal state of ``MyClass``. When an instance of ``MyClass`` is loaded from a pickle, ``__setstate__()`` is passed a ``State`` instance which it uses to initialize the object. This first example Uses ``dumps()`` to encode a data structure as a string, then prints the string to the console. It uses a data structure made up of entirely built-in types. Instances of any class can be pickled, as will be illustrated in a later example. This version fails because there is no ``SimpleObject`` class available. Unpicklable Objects When run, the script creates a file based on the name given as argument on the command line. When working with custom classes, the class being pickled must appear in the namespace of the process reading the pickle. Only the data for the instance is pickled, not the class definition. The class name is used to find the constructor to create the new object when unpickling. The following example writes instances of a class to a file. Working with Streams `Pickle: An interesting stack language. <http://peadrop.com/blog/2007/06/18/pickle-an-interesting-stack-language/>`__ -- by Alexandre Vassalotti pickle --- Object Serialization pickle_cycle.py pickle_dump_to_file_1.py pickle_load_from_file_1.py pickle_state.py pickle_stream.py pickle_string.py pickle_unpickle.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 :mod:`shelve` -- The ``shelve`` module uses ``pickle`` to store data in a DBM database. :pep:`3154` -- Pickle protocol version 4 :pydoc:`pickle` A simplistic attempt to load the resulting pickled objects fails. After the data is serialized, it can be written to a file, socket, pipe, etc.  Later, the file can be read and the data unpickled to construct a new object with the same values. Besides storing data, pickles are handy for inter-process communication. For example, ``os.fork()`` and ``os.pipe()`` can be used to establish worker processes that read job instructions from one pipe and write the results to another pipe. The core code for managing the worker pool and sending jobs in and receiving responses can be reused, since the job and response objects do not have to be based on a particular class. When using pipes or sockets, do not forget to flush after dumping each object, to push the data through the connection to the other end.  See the :mod:`multiprocessing` module for a reusable worker pool manager. By default, the pickle will be written in a binary format most compatible when sharing between Python 3 programs. Circular References Encoding and Decoding Data in Strings If the return value is false, then ``__setstate__()`` is not called when the object is unpickled. In addition to ``dumps()`` and ``loads()``, ``pickle`` provides convenience functions for working with file-like streams. It is possible to write multiple objects to a stream, and then read them from the stream without knowing in advance how many objects are written, or how big they are. Not all objects can be pickled. Sockets, file handles, database connections, and other objects with runtime state that depends on the operating system or another process may not be able to be saved in a meaningful way. Objects that have non-picklable attributes can define ``__getstate__()`` and ``__setstate__()`` to return a subset of the state of the instance to be pickled. Object serialization Pickling a Data Structure With Cycles Problems Reconstructing Objects Running the modified script now produces the desired results. The ``__getstate__()`` method must return an object containing the internal state of the object. One convenient way to represent that state is with a dictionary, but the value can be any picklable object. The state is stored, and passed to ``__setstate__()`` when the object is loaded from the pickle. The ``pickle`` module implements an algorithm for turning an arbitrary Python object into a series of bytes.  This process is also called *serializing* the object. The byte stream representing the object can then be transmitted or stored, and later reconstructed to create a new object with the same characteristics. The corrected version, which imports ``SimpleObject`` from the original script, succeeds.  Adding this import statement to the end of the import list allows the script to find the class and construct the object. The documentation for ``pickle`` makes clear that it offers no security guarantees. In fact, unpickling data can execute arbitrary code.  Be careful using ``pickle`` for inter-process communication or data storage, and do not trust data that cannot be verified as secure.  See the :mod:`hmac` module for an example of a secure way to verify the source of a pickled data source. The example simulates streams using two ``BytesIO`` buffers.  The first receives the pickled objects, and its value is fed to a second from which ``load()`` reads.  A simple database format could use pickles to store objects, too. The :mod:`shelve` module is one such implementation. The newly constructed object is equal to, but not the same object as, the original. The pickle protocol automatically handles circular references between objects, so complex data structures do not need any special handling. Consider the directed graph in :figure:`Pickling a Data Structure With Cycles`.  It includes several cycles, yet the correct structure can be pickled and then reloaded. The reloaded nodes are not the same object, but the relationship between the nodes is maintained and only one copy of the object with multiple references is reloaded. Both of these statements can be verified by examining the ``id()`` values for the nodes before and after being passed through pickle. This example uses a separate ``State`` object to hold the internal state of ``MyClass``. When an instance of ``MyClass`` is loaded from a pickle, ``__setstate__()`` is passed a ``State`` instance which it uses to initialize the object. This first example Uses ``dumps()`` to encode a data structure as a string, then prints the string to the console. It uses a data structure made up of entirely built-in types. Instances of any class can be pickled, as will be illustrated in a later example. This version fails because there is no ``SimpleObject`` class available. Unpicklable Objects When run, the script creates a file based on the name given as argument on the command line. When working with custom classes, the class being pickled must appear in the namespace of the process reading the pickle. Only the data for the instance is pickled, not the class definition. The class name is used to find the constructor to create the new object when unpickling. The following example writes instances of a class to a file. Working with Streams `Pickle: An interesting stack language. <http://peadrop.com/blog/2007/06/18/pickle-an-interesting-stack-language/>`__ -- by Alexandre Vassalotti pickle --- Object Serialization pickle_cycle.py pickle_dump_to_file_1.py pickle_load_from_file_1.py pickle_state.py pickle_stream.py pickle_string.py pickle_unpickle.py 