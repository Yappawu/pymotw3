��    *      l              �     �     �     �     �  )   �  8   �  @   (     i  j   v  P   �  v   2  	   �     �     �     �     �                    (     ?     \  )   p  $   �  �   �  X   �  x     h   }  @   �  �   '  _   	     f	     m	     t	  	   |	     �	     �	     �	     �	     �	     �	  I  
     U     W     Y     [  )   ]  8   �  @   �       j     P   y  v   �  	   A     K     c     y     �     �     �     �     �     �     �  )     $   2  �   W  X   C  x   �  h     @   ~  �   �  _   �     �            	             :     J     d     |     �   0 1 2 3 :mod:`os` -- Operating system interfaces. :mod:`pwd` -- Read user data from the password database. :mod:`spwd` -- Read user data from the shadow password database. :pydoc:`grp` And to get the group name based on the permissions on a file, look up the group returned by ``os.stat()``. Another common task might be to print a list of all the groups for a given user: As with :mod:`pwd`, it is also possible to query for information about a specific group, either by name or numeric id. Attribute Finding a Group By Name Finding a Group by ID Group Memberships for a User Index Meaning Name Names of group members Numerical id (integer) Password, if any (encrypted) Querying All Groups Read group data from Unix group database. The ``admin`` group has two members: The ``grp`` module can be used to read information about Unix groups from the group database (usually ``/etc/group``).  The read-only interface returns tuple-like objects with named attributes for the standard fields of a group record. The file status record includes ownership and permission data for the file or directory. The name and password values are both strings, the GID is an integer, and the members are reported as a list of strings. The return value is a list with an undefined order, so it needs to be sorted before printing the report. The set of unique group names is sorted before they are printed. This example prints a report of all of the "real" groups on a system, including their members (where "real" is defined as having a name not starting with "``_``").  To load the entire password database, use ``getgrall()``. To identify the group running the current process, combine ``getgrgid()`` with ``os.getgid()``. gr_gid gr_mem gr_name gr_passwd grp --- Unix Group Database grp_getgrall.py grp_getgrgid_fileowner.py grp_getgrgid_process.py grp_getgrnam.py grp_groups_for_user.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 0 1 2 3 :mod:`os` -- Operating system interfaces. :mod:`pwd` -- Read user data from the password database. :mod:`spwd` -- Read user data from the shadow password database. :pydoc:`grp` And to get the group name based on the permissions on a file, look up the group returned by ``os.stat()``. Another common task might be to print a list of all the groups for a given user: As with :mod:`pwd`, it is also possible to query for information about a specific group, either by name or numeric id. Attribute Finding a Group By Name Finding a Group by ID Group Memberships for a User Index Meaning Name Names of group members Numerical id (integer) Password, if any (encrypted) Querying All Groups Read group data from Unix group database. The ``admin`` group has two members: The ``grp`` module can be used to read information about Unix groups from the group database (usually ``/etc/group``).  The read-only interface returns tuple-like objects with named attributes for the standard fields of a group record. The file status record includes ownership and permission data for the file or directory. The name and password values are both strings, the GID is an integer, and the members are reported as a list of strings. The return value is a list with an undefined order, so it needs to be sorted before printing the report. The set of unique group names is sorted before they are printed. This example prints a report of all of the "real" groups on a system, including their members (where "real" is defined as having a name not starting with "``_``").  To load the entire password database, use ``getgrall()``. To identify the group running the current process, combine ``getgrgid()`` with ``os.getgid()``. gr_gid gr_mem gr_name gr_passwd grp --- Unix Group Database grp_getgrall.py grp_getgrgid_fileowner.py grp_getgrgid_process.py grp_getgrnam.py grp_groups_for_user.py 