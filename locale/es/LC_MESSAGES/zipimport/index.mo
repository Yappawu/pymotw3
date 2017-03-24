��    .      �              �  -   �  F   +  3   r     �     �  D   �  �        �  7  �     3     8     @  �   Q  i   �  y   K  b   �  O   (  7   x  c   �  �  	       �        �  �   �  I   �  N   �  �   #  R     N   b  b   �  B    �   W  ]   �  C   C  �   �  0   <     m     �     �     �     �     �                1  I  K  -   �  F   �  3   
     >     ]  D   p  �   �     �  7  �     �     �     �  �   �  i   y  y   �  b   ]  O   �  7     c   H  �  �     �  �   �     �  �   �  I   "  N   l  �   �  R   �  N   �  b   I   B  �   �   �!  ]   }"  C   �"  �   #  0   �#     $     $     4$     J$     f$     �$     �$     �$     �$   :mod:`imp` -- Other import-related functions. :mod:`pkgutil` -- Provides a more generic interface to ``get_data()``. :mod:`zipfile` -- Read and write ZIP archive files. :pep:`302` -- New Import Hooks :pydoc:`zipimport` :ref:`Python 2 to 3 porting notes for zipimport <porting-zipimport>` A more reliable way to retrieve the file is to use the ``get_data()`` method. The ``zipimporter`` instance that loaded the module can be accessed through the ``__loader__`` attribute of the imported module: Accessing Code As with the :mod:`inspect` module, it is possible to retrieve the source code for a module from the ZIP archive, if the archive includes the source. In the case of the example, only ``zipimport_get_source.py`` is added to ``zipimport_example.zip`` (the rest of the modules are just added as the ``.pyc`` files). Data Example Finding a Module For example, with a "normal" module, the file system path can be constructed from the ``__file__`` attribute of the imported package like this: Given the full name of a module, ``find_module()`` will try to locate that module inside the ZIP archive. If the ``example_package`` is imported from the ZIP archive instead of the file system, using ``__file__`` does not work. If the module is found, the ``zipimporter`` instance is returned. Otherwise, ``None`` is returned. If the source for a module is not available, ``get_source()`` returns ``None``. Import Python modules saved as members of ZIP archives. In this case, ``zipimport_is_package`` came from a module and the ``example_package`` is a package. It is not usually necessary to use the ``zipimport`` module directly, since it is possible to import directly from a ZIP archive as long as that archive appears in ``sys.path``. However, it is instructive to study how the importer API can be used, to learn the features available and understand how module importing works.  Knowing how the ZIP importer works will also help debug issues that may come up when distributing applications packaged as ZIP archives created with ``zipfile.PyZipFile``. Packages Run ``zipimport_make_example.py`` before any of the rest of the examples to create a ZIP archive containing all of the modules in the example directory, along with some test data needed for the examples in this section. Source The ``__file__`` of the package refers to the ZIP archive, and not a directory, so building up the path to the ``README.txt`` file gives the wrong value. The ``__loader__`` is not set for modules not imported via ``zipimport``. The ``get_code()`` method loads the code object for a module from the archive. The ``zipimport`` module implements the ``zipimporter`` class, which can be used to find and load Python modules inside ZIP archives. The ``zipimporter`` supports the import hooks API specified in PEP 302; this is how Python Eggs work. The code object is not the same as a ``module`` object, but is used to create one. The output will depend on where the sample code is located on the file system. The result is a module object configured as though the code had been loaded from a regular import. There are times when source modules or packages need to be distributed with non-code data. Images, configuration files, default data, and test fixtures are just a few examples of this. Frequently, the module ``__path__`` or ``__file__`` attributes are used to find these data files relative to where the code is installed. These examples reuse some of the code from the discussion of :mod:`zipfile` to create an example ZIP archive containing a few Python modules. To determine if a name refers to a package instead of a regular module, use ``is_package()``. To load the code as a usable module, use ``load_module()`` instead. ``pkgutil.get_data()`` uses this interface to access data from within a package. The value returned is a byte string, which needs to be decoded to a unicode string before printing. zipimport --- Load Python Code from ZIP Archives zipimport_find_module.py zipimport_get_code.py zipimport_get_data.py zipimport_get_data_nozip.py zipimport_get_data_zip.py zipimport_get_source.py zipimport_is_package.py zipimport_load_module.py zipimport_make_example.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 :mod:`imp` -- Other import-related functions. :mod:`pkgutil` -- Provides a more generic interface to ``get_data()``. :mod:`zipfile` -- Read and write ZIP archive files. :pep:`302` -- New Import Hooks :pydoc:`zipimport` :ref:`Python 2 to 3 porting notes for zipimport <porting-zipimport>` A more reliable way to retrieve the file is to use the ``get_data()`` method. The ``zipimporter`` instance that loaded the module can be accessed through the ``__loader__`` attribute of the imported module: Accessing Code As with the :mod:`inspect` module, it is possible to retrieve the source code for a module from the ZIP archive, if the archive includes the source. In the case of the example, only ``zipimport_get_source.py`` is added to ``zipimport_example.zip`` (the rest of the modules are just added as the ``.pyc`` files). Data Example Finding a Module For example, with a "normal" module, the file system path can be constructed from the ``__file__`` attribute of the imported package like this: Given the full name of a module, ``find_module()`` will try to locate that module inside the ZIP archive. If the ``example_package`` is imported from the ZIP archive instead of the file system, using ``__file__`` does not work. If the module is found, the ``zipimporter`` instance is returned. Otherwise, ``None`` is returned. If the source for a module is not available, ``get_source()`` returns ``None``. Import Python modules saved as members of ZIP archives. In this case, ``zipimport_is_package`` came from a module and the ``example_package`` is a package. It is not usually necessary to use the ``zipimport`` module directly, since it is possible to import directly from a ZIP archive as long as that archive appears in ``sys.path``. However, it is instructive to study how the importer API can be used, to learn the features available and understand how module importing works.  Knowing how the ZIP importer works will also help debug issues that may come up when distributing applications packaged as ZIP archives created with ``zipfile.PyZipFile``. Packages Run ``zipimport_make_example.py`` before any of the rest of the examples to create a ZIP archive containing all of the modules in the example directory, along with some test data needed for the examples in this section. Source The ``__file__`` of the package refers to the ZIP archive, and not a directory, so building up the path to the ``README.txt`` file gives the wrong value. The ``__loader__`` is not set for modules not imported via ``zipimport``. The ``get_code()`` method loads the code object for a module from the archive. The ``zipimport`` module implements the ``zipimporter`` class, which can be used to find and load Python modules inside ZIP archives. The ``zipimporter`` supports the import hooks API specified in PEP 302; this is how Python Eggs work. The code object is not the same as a ``module`` object, but is used to create one. The output will depend on where the sample code is located on the file system. The result is a module object configured as though the code had been loaded from a regular import. There are times when source modules or packages need to be distributed with non-code data. Images, configuration files, default data, and test fixtures are just a few examples of this. Frequently, the module ``__path__`` or ``__file__`` attributes are used to find these data files relative to where the code is installed. These examples reuse some of the code from the discussion of :mod:`zipfile` to create an example ZIP archive containing a few Python modules. To determine if a name refers to a package instead of a regular module, use ``is_package()``. To load the code as a usable module, use ``load_module()`` instead. ``pkgutil.get_data()`` uses this interface to access data from within a package. The value returned is a byte string, which needs to be decoded to a unicode string before printing. zipimport --- Load Python Code from ZIP Archives zipimport_find_module.py zipimport_get_code.py zipimport_get_data.py zipimport_get_data_nozip.py zipimport_get_data_zip.py zipimport_get_source.py zipimport_is_package.py zipimport_load_module.py zipimport_make_example.py 