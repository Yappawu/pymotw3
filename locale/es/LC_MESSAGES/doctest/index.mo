��    _                      e        s  _   �  P   �  r  5  �   �    x	     |
  	   �
  �   �
  K   &  �  r       �     u   �     `     p  �   �  H  g  H   �  �   �  �   �  �  �     �     �     �  �   �  .  C  �  r  1  �  �   &  �   �  �   �  `   �  s     �   w  �   s  �   )  �   �  g   �  d        y   �  �!  _  ;#  �  �$  f   o&  �   �&  
   �'  �   �'  �   �(     5)  �   D)  �   *    �+  4  �,  �   %.  z   /     �/  @   �/  �   �/  �  �0  �   2  �   �2  y   ~3  �   �3  ,  �4  g   �6  �   .7  g   �7  b   ,8  )   �8     �8     �8     �8     �8     9     )9     B9     a9     t9     �9     �9     �9  !   �9     �9     :     :     5:     I:     \:     |:     �:     �:     �:  I  �:  e   '<     �<  _   �<  P   �<  r  O=  �   �>    �?     �@  	   �@  �   �@  K   @A  �  �A     C  �   5C  u   D     zD     �D  �   �D  H  �E  H   �F  �   G  �   �G  �  �H     �J     �J     �J  �   �J  .  ]K  �  �L  1  N  �   @O  �   P  �   �P  `   �Q  s   R  �   �R  �   �S  �   CT  �   �T  g   �U  d   .V    �V  �  �W  _  UY  �  �Z  f   �\  �   �\  
   �]  �   �]  �   �^     O_  �   ^_  �  `    �a  4  
c  �   ?d  z   -e     �e  @   �e  �   f  �  �f  �   3h  �   �h  y   �i  �   j  ,  �j  g   �l  �   Hm  g   �m  b   Fn  )   �n     �n     �n     o     o     ,o     Co     \o     {o     �o     �o     �o     �o  !   �o     	p     p     7p     Op     cp     vp     �p     �p     �p     �p   :mod:`difflib` -- Python's sequence difference computation library, used to produce the ndiff output. :pydoc:`doctest` A test suite can be constructed for the project by importing each module and running its tests. After scanning the example file, ``doctest`` finds a total of five tests to run. All of the tests in the examples so far have been written in the docstrings of the functions they are testing.  That is convenient for users who examine the docstrings for help using the function (especially with :mod:`pydoc`), but ``doctest`` looks for tests in other places, too.  The obvious location for additional tests is in the docstrings elsewhere in the module. Because of hash randomization and key collision, the internal key list order may be different for the dictionary each time the script runs. Sets use the same hashing algorithm, and exhibit the same behavior. Both ``testmod()`` and ``testfile()`` include optional parameters to control the behavior of the tests through the ``doctest`` options.  Refer to the standard library documentation for more details about those features -- most of the time they are not needed. By File By Module Calling ``testmod()`` only if the current module name is ``__main__`` ensures that the tests are only run when the module is invoked as a main program. Docstrings at the module, class, and function levels can all contain tests. Examples cannot usually stand on their own as explanations of a function, so ``doctest`` also allows for surrounding text.  It looks for lines beginning with the interpreter prompt (``>>>``) to find the beginning of a test case, and the case is ended by a blank line or by the next interpreter prompt.  Intervening text is ignored, and can have any format as long as it does not look like a test case. External Documentation Extra spaces can find their way into code via copy-and-paste errors, but since they come at the end of the line, they can go unnoticed in the source file and be invisible in the test failure report as well. For example, in CPython, object identifiers are based on the memory address of the data structure holding the object. Getting Started Handling Unpredictable Output If global values are needed for the tests, to parameterize them for an environment for example, values can be passed to ``testmod()`` and ``testfile()`` to have the context set up using data controlled by the caller. If the value associated with a key is a string, it is treated as a docstring and scanned for tests.  If the value is a class or function, ``doctest`` searches them recursively for docstrings, which are then scanned for tests.  In this example, the module :mod:`doctest_private_tests_external` has a single test in its docstring. In fact, the entire body of the traceback is ignored and can be omitted. In real world applications, output usually includes whitespace such as blank lines, tabs, and extra spacing to make it more readable.  Blank lines, in particular, cause issues with ``doctest`` because they are used to delimit tests. Mixing tests in with regular code is not the only way to use ``doctest``.  Examples embedded in external project documentation files, such as reStructuredText files, can be used as well. Normally ``doctest`` sets up the test execution environment to include the members of the module being tested, so the tests do not need to import the module explicitly.  In this case, however, the tests are not defined in a Python module, and ``doctest`` does not know how to set up the global namespace, so the examples need to do the import work themselves.  All of the tests in a given file share the same execution context, so importing the module once at the top of the file is enough. Running Tests Test Context Test Locations That does not mean the tests *cannot* interfere with each other, though, if they change the contents of mutable variables defined in the module. The "``#doctest: +ELLIPSIS``" comment after the call to ``unpredictable()`` tells ``doctest`` to turn on the ``ELLIPSIS`` option for that test.  The ``...`` replaces the memory address in the object id, so that portion of the expected value is ignored and the actual output matches and the test passes. The best way to deal with these potential discrepancies is to create tests that produce values that are not likely to change.  In the case of dictionaries and sets, that might mean looking for specific keys individually, generating a sorted list of the contents of the data structure, or comparing against a literal value for equality instead of depending on the string representation. The execution context created by ``doctest`` as it runs tests contains a copy of the module-level globals for the test module.  Each test source (function, class, module) has its own set of global values to isolate the tests from each other somewhat, so they are less likely to interfere with one another. The first argument to ``testmod()`` is a module containing code to be scanned for tests.  A separate test script can use this feature to import the real code and run the tests in each module one after another. The first step to setting up doctests is to use the interactive interpreter to create examples and then copy and paste them into the docstrings in the module.  Here, ``my_function()`` has two examples given: The help for this sample module is saved to a separate file, ``doctest_in_help.txt``.  The examples illustrating how to use the module are included with the help text, and ``doctest`` can be used to find and run them. The instructions to run ``doctest`` against the source can be included at the bottom of modules. The module variable ``_module_data`` is changed by the tests for ``one()``, causing the test for ``two()`` to fail. The previous examples all use the command line test runner built into ``doctest``.  It is easy and convenient for a single module, but will quickly become tedious as a package spreads out into multiple files.  There are several alternative approaches. The single example is actually interpreted as two separate tests, with the first expecting no console output and the second expecting the boolean result of the comparison operation. The surrounding text in the updated docstring makes it more useful to a human reader.  Because it is ignored by ``doctest``, the results are the same. The test fails, because it interprets the blank line after the line containing ``Line one.`` in the docstring as the end of the sample output.  To match the blank lines, replace them in the sample input with the string ``<BLANKLINE>``. The tests from each source are collapsed into a single outcome, instead of being reported individually. The tests in the text file can be run from the command line, just as with the Python source modules. There are cases where it is beneficial to add extra whitespace in the sample output for the test, and have ``doctest`` ignore it.  For example, data structures can be easier to read when spread across several lines, even if their representation would fit on a single line. There are cases where tests exist for a module that should be included with the source code but not in the help text for a module, so they need to be placed somewhere other than the docstrings.  ``doctest`` also looks for a module-level variable called ``__test__`` and uses it to locate other tests.  The value of ``__test__`` should be a dictionary that maps test set names (as strings) to strings, modules, classes, or functions. There are cases where the unpredictable value cannot be ignored, because that would make the test incomplete or inaccurate.  For example, simple tests quickly become more complex when dealing with data types whose string representations are inconsistent.  The string form of a dictionary, for example, may change based on the order the keys are added. There are other cases where the exact output may not be predictable, but should still be testable.  For example, local date and time values and object ids change on every test run, the default precision used in the representation of floating point values depend on compiler options, and string representations of container objects like dictionaries may not be deterministic.  Although these conditions cannot be controlled, there are techniques for dealing with them. These id values change each time a program runs, because it is loaded into a different part of memory. To run the tests, use ``doctest`` as the main program via the ``-m`` option.  Usually no output is produced while the tests are running, so the next example includes the ``-v`` option to make the output more verbose. Tracebacks Tracebacks are a special case of changing data.  Since the paths in a traceback depend on the location where a module is installed on the file system, it would be impossible to write portable tests if they were treated the same as other output. Unified (``REPORT_UDIFF``) and context (``REPORT_CDIFF``) diffs are also available, for output where those formats are more readable. Unittest Suite Using one of the diff-based reporting options, such as ``REPORT_NDIFF``, shows the difference between the actual and expected values with more detail, and the extra space becomes visible. When ``NORMALIZE_WHITESPACE`` is turned on, any whitespace in the actual and expected values is considered a match.  Whitespace cannot be added to the expected value where none exists in the output, but the length of the whitespace sequence and actual whitespace characters do not need to match.  The first test example gets this rule correct, and passes, even though there are extra spaces and newlines.  The second has extra whitespace after ``[`` and before ``]``, so it fails. When ``doctest`` sees a traceback header line (either "``Traceback (most recent call last):``" or "``Traceback (innermost last):``", to support different versions of Python), it skips ahead to find the exception type and message, ignoring the intervening lines entirely. When both :mod:`unittest` and ``doctest`` are used for testing the same code in different situations, the ``unittest`` integration in ``doctest`` can be used to run the tests together.  Two classes, ``DocTestSuite`` and ``DocFileSuite`` create test suites compatible with the test-runner API of ``unittest``. When the tests include values that are likely to change in unpredictable ways, and where the actual value is not important to the test results, use the ``ELLIPSIS`` option to tell ``doctest`` to ignore portions of the verification value. Whitespace within a line can also cause tricky problems with tests. This example has a single extra space after the ``6``. Working Around Whitespace Write automated tests as part of the documentation for a module. `Manuel <https://pythonhosted.org/manuel/>`_ -- Third-party documentation-based test runner with more advanced test case extraction and integration with Sphinx. `Sphinx <http://www.sphinx-doc.org/>`_ -- As well as being the documentation processing tool for Python's standard library, Sphinx has been adopted by many third-party projects because it is easy to use and produces clean output in several digital and print formats.  Sphinx includes an extension for running doctests as is processes documentation source files, so the examples are always accurate. `The Mighty Dictionary <https://www.youtube.com/watch?v=C4Kc8xzcA68>`__ -- Presentation by Brandon Rhodes at PyCon 2010 about the internal operations of the ``dict``. ``TestGlobals`` has two methods: ``one()`` and ``two()``. The tests in the docstring for ``one()`` set a global variable, and the test for ``two()`` looks for it (expecting not to find it). ``doctest`` makes a special effort to recognize tracebacks, and ignore the parts that might change from system to system. ``doctest`` replaces actual blank lines with the same literal before performing the comparison, so now the actual and expected values match and the test passes. ``doctest`` tests source code by running examples embedded in the documentation and verifying that they produce the expected results. It works by parsing the help text to find examples, running them, then comparing the output text against the expected value.  Many developers find ``doctest`` easier to use than :mod:`unittest` because, in its simplest form, there is no API to learn before using it.  However, as the examples become more complex the lack of fixture management can make writing ``doctest`` tests more cumbersome than using :mod:`unittest`. ``double_space()`` takes a list of input lines, and prints them double-spaced with blank lines between. ``testfile()`` works in a way similar to ``testmod()``, allowing the tests to be invoked explicitly in an external file from within the test program. `nose2 <https://nose2.readthedocs.io/en/latest/>`_ -- Third-party test runner with ``doctest`` support. `py.test <http://doc.pytest.org/en/latest/>`_ -- Third-party test runner with ``doctest`` support. doctest --- Testing Through Documentation doctest_blankline.py doctest_blankline_fail.py doctest_docstrings.py doctest_ellipsis.py doctest_extra_space.py doctest_hashed_values.py doctest_hashed_values_tests.py doctest_in_help.py doctest_in_help.txt doctest_mutable_globals.py doctest_ndiff.py doctest_private_tests.py doctest_private_tests_external.py doctest_simple.py doctest_simple_with_docs.py doctest_test_globals.py doctest_testfile.py doctest_testmod.py doctest_testmod_other_module.py doctest_tracebacks.py doctest_tracebacks_no_body.py doctest_unittest.py doctest_unpredictable.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 :mod:`difflib` -- Python's sequence difference computation library, used to produce the ndiff output. :pydoc:`doctest` A test suite can be constructed for the project by importing each module and running its tests. After scanning the example file, ``doctest`` finds a total of five tests to run. All of the tests in the examples so far have been written in the docstrings of the functions they are testing.  That is convenient for users who examine the docstrings for help using the function (especially with :mod:`pydoc`), but ``doctest`` looks for tests in other places, too.  The obvious location for additional tests is in the docstrings elsewhere in the module. Because of hash randomization and key collision, the internal key list order may be different for the dictionary each time the script runs. Sets use the same hashing algorithm, and exhibit the same behavior. Both ``testmod()`` and ``testfile()`` include optional parameters to control the behavior of the tests through the ``doctest`` options.  Refer to the standard library documentation for more details about those features -- most of the time they are not needed. By File By Module Calling ``testmod()`` only if the current module name is ``__main__`` ensures that the tests are only run when the module is invoked as a main program. Docstrings at the module, class, and function levels can all contain tests. Examples cannot usually stand on their own as explanations of a function, so ``doctest`` also allows for surrounding text.  It looks for lines beginning with the interpreter prompt (``>>>``) to find the beginning of a test case, and the case is ended by a blank line or by the next interpreter prompt.  Intervening text is ignored, and can have any format as long as it does not look like a test case. External Documentation Extra spaces can find their way into code via copy-and-paste errors, but since they come at the end of the line, they can go unnoticed in the source file and be invisible in the test failure report as well. For example, in CPython, object identifiers are based on the memory address of the data structure holding the object. Getting Started Handling Unpredictable Output If global values are needed for the tests, to parameterize them for an environment for example, values can be passed to ``testmod()`` and ``testfile()`` to have the context set up using data controlled by the caller. If the value associated with a key is a string, it is treated as a docstring and scanned for tests.  If the value is a class or function, ``doctest`` searches them recursively for docstrings, which are then scanned for tests.  In this example, the module :mod:`doctest_private_tests_external` has a single test in its docstring. In fact, the entire body of the traceback is ignored and can be omitted. In real world applications, output usually includes whitespace such as blank lines, tabs, and extra spacing to make it more readable.  Blank lines, in particular, cause issues with ``doctest`` because they are used to delimit tests. Mixing tests in with regular code is not the only way to use ``doctest``.  Examples embedded in external project documentation files, such as reStructuredText files, can be used as well. Normally ``doctest`` sets up the test execution environment to include the members of the module being tested, so the tests do not need to import the module explicitly.  In this case, however, the tests are not defined in a Python module, and ``doctest`` does not know how to set up the global namespace, so the examples need to do the import work themselves.  All of the tests in a given file share the same execution context, so importing the module once at the top of the file is enough. Running Tests Test Context Test Locations That does not mean the tests *cannot* interfere with each other, though, if they change the contents of mutable variables defined in the module. The "``#doctest: +ELLIPSIS``" comment after the call to ``unpredictable()`` tells ``doctest`` to turn on the ``ELLIPSIS`` option for that test.  The ``...`` replaces the memory address in the object id, so that portion of the expected value is ignored and the actual output matches and the test passes. The best way to deal with these potential discrepancies is to create tests that produce values that are not likely to change.  In the case of dictionaries and sets, that might mean looking for specific keys individually, generating a sorted list of the contents of the data structure, or comparing against a literal value for equality instead of depending on the string representation. The execution context created by ``doctest`` as it runs tests contains a copy of the module-level globals for the test module.  Each test source (function, class, module) has its own set of global values to isolate the tests from each other somewhat, so they are less likely to interfere with one another. The first argument to ``testmod()`` is a module containing code to be scanned for tests.  A separate test script can use this feature to import the real code and run the tests in each module one after another. The first step to setting up doctests is to use the interactive interpreter to create examples and then copy and paste them into the docstrings in the module.  Here, ``my_function()`` has two examples given: The help for this sample module is saved to a separate file, ``doctest_in_help.txt``.  The examples illustrating how to use the module are included with the help text, and ``doctest`` can be used to find and run them. The instructions to run ``doctest`` against the source can be included at the bottom of modules. The module variable ``_module_data`` is changed by the tests for ``one()``, causing the test for ``two()`` to fail. The previous examples all use the command line test runner built into ``doctest``.  It is easy and convenient for a single module, but will quickly become tedious as a package spreads out into multiple files.  There are several alternative approaches. The single example is actually interpreted as two separate tests, with the first expecting no console output and the second expecting the boolean result of the comparison operation. The surrounding text in the updated docstring makes it more useful to a human reader.  Because it is ignored by ``doctest``, the results are the same. The test fails, because it interprets the blank line after the line containing ``Line one.`` in the docstring as the end of the sample output.  To match the blank lines, replace them in the sample input with the string ``<BLANKLINE>``. The tests from each source are collapsed into a single outcome, instead of being reported individually. The tests in the text file can be run from the command line, just as with the Python source modules. There are cases where it is beneficial to add extra whitespace in the sample output for the test, and have ``doctest`` ignore it.  For example, data structures can be easier to read when spread across several lines, even if their representation would fit on a single line. There are cases where tests exist for a module that should be included with the source code but not in the help text for a module, so they need to be placed somewhere other than the docstrings.  ``doctest`` also looks for a module-level variable called ``__test__`` and uses it to locate other tests.  The value of ``__test__`` should be a dictionary that maps test set names (as strings) to strings, modules, classes, or functions. There are cases where the unpredictable value cannot be ignored, because that would make the test incomplete or inaccurate.  For example, simple tests quickly become more complex when dealing with data types whose string representations are inconsistent.  The string form of a dictionary, for example, may change based on the order the keys are added. There are other cases where the exact output may not be predictable, but should still be testable.  For example, local date and time values and object ids change on every test run, the default precision used in the representation of floating point values depend on compiler options, and string representations of container objects like dictionaries may not be deterministic.  Although these conditions cannot be controlled, there are techniques for dealing with them. These id values change each time a program runs, because it is loaded into a different part of memory. To run the tests, use ``doctest`` as the main program via the ``-m`` option.  Usually no output is produced while the tests are running, so the next example includes the ``-v`` option to make the output more verbose. Tracebacks Tracebacks are a special case of changing data.  Since the paths in a traceback depend on the location where a module is installed on the file system, it would be impossible to write portable tests if they were treated the same as other output. Unified (``REPORT_UDIFF``) and context (``REPORT_CDIFF``) diffs are also available, for output where those formats are more readable. Unittest Suite Using one of the diff-based reporting options, such as ``REPORT_NDIFF``, shows the difference between the actual and expected values with more detail, and the extra space becomes visible. When ``NORMALIZE_WHITESPACE`` is turned on, any whitespace in the actual and expected values is considered a match.  Whitespace cannot be added to the expected value where none exists in the output, but the length of the whitespace sequence and actual whitespace characters do not need to match.  The first test example gets this rule correct, and passes, even though there are extra spaces and newlines.  The second has extra whitespace after ``[`` and before ``]``, so it fails. When ``doctest`` sees a traceback header line (either "``Traceback (most recent call last):``" or "``Traceback (innermost last):``", to support different versions of Python), it skips ahead to find the exception type and message, ignoring the intervening lines entirely. When both :mod:`unittest` and ``doctest`` are used for testing the same code in different situations, the ``unittest`` integration in ``doctest`` can be used to run the tests together.  Two classes, ``DocTestSuite`` and ``DocFileSuite`` create test suites compatible with the test-runner API of ``unittest``. When the tests include values that are likely to change in unpredictable ways, and where the actual value is not important to the test results, use the ``ELLIPSIS`` option to tell ``doctest`` to ignore portions of the verification value. Whitespace within a line can also cause tricky problems with tests. This example has a single extra space after the ``6``. Working Around Whitespace Write automated tests as part of the documentation for a module. `Manuel <https://pythonhosted.org/manuel/>`_ -- Third-party documentation-based test runner with more advanced test case extraction and integration with Sphinx. `Sphinx <http://www.sphinx-doc.org/>`_ -- As well as being the documentation processing tool for Python's standard library, Sphinx has been adopted by many third-party projects because it is easy to use and produces clean output in several digital and print formats.  Sphinx includes an extension for running doctests as is processes documentation source files, so the examples are always accurate. `The Mighty Dictionary <https://www.youtube.com/watch?v=C4Kc8xzcA68>`__ -- Presentation by Brandon Rhodes at PyCon 2010 about the internal operations of the ``dict``. ``TestGlobals`` has two methods: ``one()`` and ``two()``. The tests in the docstring for ``one()`` set a global variable, and the test for ``two()`` looks for it (expecting not to find it). ``doctest`` makes a special effort to recognize tracebacks, and ignore the parts that might change from system to system. ``doctest`` replaces actual blank lines with the same literal before performing the comparison, so now the actual and expected values match and the test passes. ``doctest`` tests source code by running examples embedded in the documentation and verifying that they produce the expected results. It works by parsing the help text to find examples, running them, then comparing the output text against the expected value.  Many developers find ``doctest`` easier to use than :mod:`unittest` because, in its simplest form, there is no API to learn before using it.  However, as the examples become more complex the lack of fixture management can make writing ``doctest`` tests more cumbersome than using :mod:`unittest`. ``double_space()`` takes a list of input lines, and prints them double-spaced with blank lines between. ``testfile()`` works in a way similar to ``testmod()``, allowing the tests to be invoked explicitly in an external file from within the test program. `nose2 <https://nose2.readthedocs.io/en/latest/>`_ -- Third-party test runner with ``doctest`` support. `py.test <http://doc.pytest.org/en/latest/>`_ -- Third-party test runner with ``doctest`` support. doctest --- Testing Through Documentation doctest_blankline.py doctest_blankline_fail.py doctest_docstrings.py doctest_ellipsis.py doctest_extra_space.py doctest_hashed_values.py doctest_hashed_values_tests.py doctest_in_help.py doctest_in_help.txt doctest_mutable_globals.py doctest_ndiff.py doctest_private_tests.py doctest_private_tests_external.py doctest_simple.py doctest_simple_with_docs.py doctest_test_globals.py doctest_testfile.py doctest_testmod.py doctest_testmod_other_module.py doctest_tracebacks.py doctest_tracebacks_no_body.py doctest_unittest.py doctest_unpredictable.py 