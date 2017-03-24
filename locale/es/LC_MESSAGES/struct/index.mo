��    (      \              �  V   �  _   �     T  >   d  ]   �  �       �  �         �     �  (   �  
          �   8     2     :     G     W     e  �   {  1  �  Q   0
  �   �
  �     @   �  d  �  |   F     �     �     �     �     �  
   �     �  !   �          .     C     R  I  c  V   �  _        d  >   t  ]   �  �         �         �     �  (   �  
        *  �   H     B     J     W     g     u  �   �  1    Q   @  �   �  �     @   �  d  �  |   V     �     �     �     �     �  
   �     �  !   
     ,     >     S     b   :mod:`array` -- The ``array`` module, for working with sequences of fixed-type values. :mod:`binascii` -- The ``binascii`` module, for producing ASCII representations of binary data. :pydoc:`struct` :ref:`Python 2 to 3 porting notes for struct <porting-struct>` :table:`Byte Order Specifiers for struct` lists the byte order specifiers used by ``Struct``. A set of module-level functions is available for working with structured values, as well as the ``Struct`` class.  Format specifiers are converted from their string format to a compiled representation, similar to the way regular expressions are handled. The conversion takes some resources, so it is typically more efficient to do it once when creating a ``Struct`` instance and call methods on the instance instead of using the module-level functions. All of the following examples use the ``Struct`` class. Buffers By default, values are encoded using the native C library notion of *endianness*.  It is easy to override that choice by providing an explicit endianness directive in the format string. Byte Order Specifiers for struct Code Convert between strings and binary data. Endianness Functions versus Struct Class In this example, the specifier calls for an integer or long integer value, a two-byte string, and a floating-point number.  The spaces in the format specifier are included to separate the type indicators, and are ignored when the format is compiled. Meaning Native order Native standard Network order Packing and Unpacking Passing the packed value to ``unpack()``, gives basically the same values back (note the discrepancy in the floating point value). Structs support *packing* data into strings, and *unpacking* data from strings using format specifiers made up of characters representing the type of the data and optional count and endianness indicators.  Refer to the standard library documentation for a complete list of the supported format specifiers. The ``size`` attribute of the ``Struct`` tells us how big the buffer needs to be. The ``struct`` module includes functions for converting between strings of bytes and native Python data types such as numbers and strings. The example converts the packed value to a sequence of hex bytes for printing with ``binascii.hexlify()``, since some of the characters are nulls. Use ``unpack()`` to extract data from its packed representation. Working with binary packed data is typically reserved for performance-sensitive situations or passing data into and out of extension modules.  These cases can be optimized by avoiding the overhead of allocating a new buffer for each packed structure.  The :meth:`pack_into` and :meth:`unpack_from` methods support writing to pre-allocated buffers directly. `WikiPedia: Endianness <https://en.wikipedia.org/wiki/Endianness>`_ -- Explanation of byte order and endianness in encoding. ``!`` ``<`` ``=`` ``>`` ``@`` big-endian little-endian struct --- Binary Data Structures struct_buffers.py struct_endianness.py struct_pack.py struct_unpack.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 :mod:`array` -- The ``array`` module, for working with sequences of fixed-type values. :mod:`binascii` -- The ``binascii`` module, for producing ASCII representations of binary data. :pydoc:`struct` :ref:`Python 2 to 3 porting notes for struct <porting-struct>` :table:`Byte Order Specifiers for struct` lists the byte order specifiers used by ``Struct``. A set of module-level functions is available for working with structured values, as well as the ``Struct`` class.  Format specifiers are converted from their string format to a compiled representation, similar to the way regular expressions are handled. The conversion takes some resources, so it is typically more efficient to do it once when creating a ``Struct`` instance and call methods on the instance instead of using the module-level functions. All of the following examples use the ``Struct`` class. Buffers By default, values are encoded using the native C library notion of *endianness*.  It is easy to override that choice by providing an explicit endianness directive in the format string. Byte Order Specifiers for struct Code Convert between strings and binary data. Endianness Functions versus Struct Class In this example, the specifier calls for an integer or long integer value, a two-byte string, and a floating-point number.  The spaces in the format specifier are included to separate the type indicators, and are ignored when the format is compiled. Meaning Native order Native standard Network order Packing and Unpacking Passing the packed value to ``unpack()``, gives basically the same values back (note the discrepancy in the floating point value). Structs support *packing* data into strings, and *unpacking* data from strings using format specifiers made up of characters representing the type of the data and optional count and endianness indicators.  Refer to the standard library documentation for a complete list of the supported format specifiers. The ``size`` attribute of the ``Struct`` tells us how big the buffer needs to be. The ``struct`` module includes functions for converting between strings of bytes and native Python data types such as numbers and strings. The example converts the packed value to a sequence of hex bytes for printing with ``binascii.hexlify()``, since some of the characters are nulls. Use ``unpack()`` to extract data from its packed representation. Working with binary packed data is typically reserved for performance-sensitive situations or passing data into and out of extension modules.  These cases can be optimized by avoiding the overhead of allocating a new buffer for each packed structure.  The :meth:`pack_into` and :meth:`unpack_from` methods support writing to pre-allocated buffers directly. `WikiPedia: Endianness <https://en.wikipedia.org/wiki/Endianness>`_ -- Explanation of byte order and endianness in encoding. ``!`` ``<`` ``=`` ``>`` ``@`` big-endian little-endian struct --- Binary Data Structures struct_buffers.py struct_endianness.py struct_pack.py struct_unpack.py 