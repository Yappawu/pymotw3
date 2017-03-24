��    '      T              �     �  :   �  C   �  �    �     L   �  l   ;  ^   �  �     �   �  Q   W  �  �  �  �
    b  l   o  W   �  �   4    �  v     �   �     T      r     �  �   �  6   H       <   �  9   �       '   ,     T     d     r     �     �     �     �     �  I  �     4  :   B  C   }  �  �  �   �  L   �  l   �  ^   O  �   �  �   d  Q   �  �  P  �  F    	  l      W   �   �   �     �!  v   �"  �   3#     �#      $     :$  �   Q$  6   �$     &%  <   B%  9   %     �%  '   �%     �%     &     &     0&     E&     Z&     n&     |&   :pydoc:`uuid` :ref:`Python 2 to 3 porting notes for uuid <porting-uuid>` :rfc:`4122` -- A Universally Unique Identifier (UUID) URN Namespace :rfc:`4122` defines a system for creating universally unique identifiers for resources in a way that does not require a central registrar. UUID values are 128 bits long and, as the reference guide says, "can guarantee uniqueness across space and time." They are useful for generating identifiers for documents, hosts, application clients, and other situations where a unique value is necessary. The RFC is specifically focused on creating a Uniform Resource Name namespace and covers three main algorithms: Because each computer has a different MAC address, running the sample program on different systems will produce entirely different values. This example passes explicit node IDs to simulate running on different hosts. Because of the time component, each call to ``uuid1()`` returns a new value. If a system has more than one network card, and so more than one MAC, any one of the values may be returned. In addition to a different time value the node identifier at the end of the UUID also changes. In addition to generating new UUID values, it is possible to parse strings in standard formats to create UUID objects, making it easier to handle comparisons and sorting operations. In all cases, the seed value is combined with the system clock and a clock sequence value used to maintain uniqueness in case the clock is set backwards. In this output, only the time component (at the beginning of the string) changes. It is also useful in some contexts to create UUID values from names instead of random or time-based values. Versions 3 and 5 of the UUID specification use cryptographic hash values (MD5 or SHA-1, respectively) to combine namespace-specific seed values with names. There are several well-known namespaces, identified by pre-defined UUID values, for working with DNS, URLs, ISO OIDs, and X.500 Distinguished Names. New application-specific namespaces can be defined by generating and saving UUID values. Sometimes host-based and namespace-based UUID values are not "different enough." For example, in cases where UUID is intended to be used as a hash key, a more random sequence of values with more differentiation is desirable to avoid collisions in the hash table. Having values with fewer common digits also makes it easier to find them in log files. To add greater differentiation in UUIDs, use ``uuid4()`` to generate them using random input values. Surrounding curly braces are removed from the input, as are dashes (``-``).  If the string has a prefix containing ``urn:`` and/or ``uuid:``, it is also removed.  The remaining text must be a string of 16 hexadecimal digits, which are then interpreted as a UUID value. The UUID value for a given name in a namespace is always the same, no matter when or where it is calculated. The ``uuid`` module implements Universally Unique Identifiers as described in RFC 4122. The components of the UUID object returned can be accessed through read-only instance attributes. Some attributes, such as ``hex``, ``int``, and ``urn``, are different representations of the UUID value. The source of randomness depends on which C libraries are available when ``uuid`` is imported.  If ``libuuid`` (or ``uuid.dll``) can be loaded and it contains a function for generating random values, it is used.  Otherwise ``os.urandom()`` or the :mod:`random` module are used. To create a UUID from a DNS name, pass ``uuid.NAMESPACE_DNS`` as the namespace argument to ``uuid3()`` or ``uuid5()``: To generate a UUID for a host, identified by its MAC address, use the ``uuid1()`` function. The node identifier argument is optional; leave the field blank to use the value returned by ``getnode()``. UUID 1 - IEEE 802 MAC Address UUID 3 and 5 - Name-Based Values UUID 4 - Random Values UUID version 1 values are computed using the MAC address of the host. The ``uuid`` module uses ``getnode()`` to retrieve the MAC value of the current system. Using IEEE 802 MAC addresses as a source of uniqueness Using pseudo-random numbers Using well-known strings combined with cryptographic hashing Values for the same name in the namespaces are different. Working with UUID Objects uuid --- Universally Unique Identifiers uuid_getnode.py uuid_uuid1.py uuid_uuid1_othermac.py uuid_uuid1_repeat.py uuid_uuid3_repeat.py uuid_uuid3_uuid5.py uuid_uuid4.py uuid_uuid_objects.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 :pydoc:`uuid` :ref:`Python 2 to 3 porting notes for uuid <porting-uuid>` :rfc:`4122` -- A Universally Unique Identifier (UUID) URN Namespace :rfc:`4122` defines a system for creating universally unique identifiers for resources in a way that does not require a central registrar. UUID values are 128 bits long and, as the reference guide says, "can guarantee uniqueness across space and time." They are useful for generating identifiers for documents, hosts, application clients, and other situations where a unique value is necessary. The RFC is specifically focused on creating a Uniform Resource Name namespace and covers three main algorithms: Because each computer has a different MAC address, running the sample program on different systems will produce entirely different values. This example passes explicit node IDs to simulate running on different hosts. Because of the time component, each call to ``uuid1()`` returns a new value. If a system has more than one network card, and so more than one MAC, any one of the values may be returned. In addition to a different time value the node identifier at the end of the UUID also changes. In addition to generating new UUID values, it is possible to parse strings in standard formats to create UUID objects, making it easier to handle comparisons and sorting operations. In all cases, the seed value is combined with the system clock and a clock sequence value used to maintain uniqueness in case the clock is set backwards. In this output, only the time component (at the beginning of the string) changes. It is also useful in some contexts to create UUID values from names instead of random or time-based values. Versions 3 and 5 of the UUID specification use cryptographic hash values (MD5 or SHA-1, respectively) to combine namespace-specific seed values with names. There are several well-known namespaces, identified by pre-defined UUID values, for working with DNS, URLs, ISO OIDs, and X.500 Distinguished Names. New application-specific namespaces can be defined by generating and saving UUID values. Sometimes host-based and namespace-based UUID values are not "different enough." For example, in cases where UUID is intended to be used as a hash key, a more random sequence of values with more differentiation is desirable to avoid collisions in the hash table. Having values with fewer common digits also makes it easier to find them in log files. To add greater differentiation in UUIDs, use ``uuid4()`` to generate them using random input values. Surrounding curly braces are removed from the input, as are dashes (``-``).  If the string has a prefix containing ``urn:`` and/or ``uuid:``, it is also removed.  The remaining text must be a string of 16 hexadecimal digits, which are then interpreted as a UUID value. The UUID value for a given name in a namespace is always the same, no matter when or where it is calculated. The ``uuid`` module implements Universally Unique Identifiers as described in RFC 4122. The components of the UUID object returned can be accessed through read-only instance attributes. Some attributes, such as ``hex``, ``int``, and ``urn``, are different representations of the UUID value. The source of randomness depends on which C libraries are available when ``uuid`` is imported.  If ``libuuid`` (or ``uuid.dll``) can be loaded and it contains a function for generating random values, it is used.  Otherwise ``os.urandom()`` or the :mod:`random` module are used. To create a UUID from a DNS name, pass ``uuid.NAMESPACE_DNS`` as the namespace argument to ``uuid3()`` or ``uuid5()``: To generate a UUID for a host, identified by its MAC address, use the ``uuid1()`` function. The node identifier argument is optional; leave the field blank to use the value returned by ``getnode()``. UUID 1 - IEEE 802 MAC Address UUID 3 and 5 - Name-Based Values UUID 4 - Random Values UUID version 1 values are computed using the MAC address of the host. The ``uuid`` module uses ``getnode()`` to retrieve the MAC value of the current system. Using IEEE 802 MAC addresses as a source of uniqueness Using pseudo-random numbers Using well-known strings combined with cryptographic hashing Values for the same name in the namespaces are different. Working with UUID Objects uuid --- Universally Unique Identifiers uuid_getnode.py uuid_uuid1.py uuid_uuid1_othermac.py uuid_uuid1_repeat.py uuid_uuid3_repeat.py uuid_uuid3_uuid5.py uuid_uuid4.py uuid_uuid_objects.py 