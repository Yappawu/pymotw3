��    1      �              ,  @   -  f   n  U   �     +  �  >  �   �  �   �     o  7   �  �   �  �   A  L   �     	     *	    ?	     U
  Q   j
  x   �
  =   5  �   s  U     �  Y  J   �  E   B  �   �  n  �  :   �  7  +  o   c  �   �  Q   �  �   �     t  o   �  `   �  F   X  )   �     �     �     �          /     I     c     z     �     �     �  I  �  @   4  f   u  U   �     2  �  E  �   �  �   �     v  7   �  �   �  �   H  L   �          1    F     \  Q   q  x   �  =   <   �   z   U   
!  �  `!  J   �"  E   I#  �   �#  n  �$  :   �%  7  2&  o   j'  �   �'  Q   �(  �   �(     {)  o   �)  `   �)  F   _*  )   �*     �*     �*      +     +     6+     P+     j+     �+     �+     �+     �+   :mod:`cgitb` -- Another module for formatting tracebacks nicely. :mod:`inspect` -- The ``inspect`` module includes other functions for probing the frames on the stack. :mod:`sys` -- The ``sys`` module includes singletons that hold the current exception. :pydoc:`traceback` Although the functions in ``traceback`` mimic the behavior of the interactive interpreter by default, they also are useful for handling exceptions in situations where dumping the full stack trace to the console is not desirable. For example, a web application may need to format the traceback so it looks good in HTML and an IDE may convert the elements of the stack trace into a clickable list that lets the user browse the source. Another way to handle exception reporting is with ``print_exc()``. It uses ``sys.exc_info()`` to obtain the exception information for the current thread, formats the results, and prints the text to a file handle (``sys.stderr``, by default). Each ``FrameSummary`` describes a frame of the stack, including information about where in the program source files the execution context is. Examining the Stack Extract, format, and print exceptions and stack traces. In this example, the file handle for ``sys.stdout`` is substituted so the informational and traceback messages are mingled correctly: It also accepts arguments, not shown here, to start from an alternate place in the stack frame or to limit the depth of traversal. It returns a list of strings, each of which makes up one line of the output. Low-level Exception APIs Low-level Stack APIs Once extracted, the stack trace can be formatted using functions like ``format_exception()``, ``format_stack()``, etc. The format functions return a list of strings with messages formatted to be printed. There are shorthand functions for printing the formatted values, as well. Supporting Functions The ``StackSummary`` is an iterable container holding ``FrameSummary`` instances. The ``TracebackException`` class is a high-level interface for building a ``StackSummary`` while processing a traceback. The ``extract_stack()`` function works like ``extract_tb()``. The ``format()`` method produces a formatted version of the full traceback, while ``format_exception_only()`` shows only the exception message. The ``format()`` method produces a sequence of formatted strings ready to be printed. The ``traceback`` module works with the call stack to produce error messages. A *traceback* is a stack trace from the point of an exception handler down the call chain to the point where the exception was raised. Tracebacks also can be accessed from the current call stack up from the point of a call (and without the context of an error), which is useful for finding out the paths being followed into a function. The arguments to ``print_exception()`` are produced by ``sys.exc_info()``. The examples in this section use the module ``traceback_example.py``. The high-level API in ``traceback`` uses ``StackSummary`` and ``FrameSummary`` instances to hold the representation of the stack. These classes can be constructed from a traceback or the current execution stack, and then processed in the same ways. The low-level functions in ``traceback`` fall into several common categories.  There are functions for extracting raw tracebacks from the current runtime environment (either an exception handler for a traceback, or the regular stack). The extracted stack trace is a sequence of tuples containing the filename, line number, function name, and text of the source line. The output look like a traceback without an error message. The return value is a list of entries from each level of the stack represented by the traceback.  Each entry is a tuple with four parts: the name of the source file, the line number in that file, the name of the function, and the source text from that line with whitespace stripped (if the source is available). The same three arguments, exception type, exception value, and traceback, are used with ``format_exception()``. There are a similar set of functions for performing the same operations with the current call stack instead of a traceback. ``print_stack()`` prints the current stack, without generating an exception. To examine the current stack, construct a ``StackSummary`` from ``walk_stack()``. To process the traceback in some other way, such as formatting it differently, use ``extract_tb()`` to get the data in a usable form. TracebackException ``format_stack()`` prepares the stack trace in the same way that ``format_exception()`` prepares the traceback. ``print_exc()`` is just a shortcut for ``print_exception()``, which requires explicit arguments. ``print_exception()`` uses ``format_exception()`` to prepare the text. traceback --- Exceptions and Stack Traces traceback_example.py traceback_extract_stack.py traceback_extract_tb.py traceback_format_exception.py traceback_format_stack.py traceback_framesummary.py traceback_print_exc.py traceback_print_exception.py traceback_print_stack.py traceback_stacksummary.py traceback_tracebackexception.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 :mod:`cgitb` -- Another module for formatting tracebacks nicely. :mod:`inspect` -- The ``inspect`` module includes other functions for probing the frames on the stack. :mod:`sys` -- The ``sys`` module includes singletons that hold the current exception. :pydoc:`traceback` Although the functions in ``traceback`` mimic the behavior of the interactive interpreter by default, they also are useful for handling exceptions in situations where dumping the full stack trace to the console is not desirable. For example, a web application may need to format the traceback so it looks good in HTML and an IDE may convert the elements of the stack trace into a clickable list that lets the user browse the source. Another way to handle exception reporting is with ``print_exc()``. It uses ``sys.exc_info()`` to obtain the exception information for the current thread, formats the results, and prints the text to a file handle (``sys.stderr``, by default). Each ``FrameSummary`` describes a frame of the stack, including information about where in the program source files the execution context is. Examining the Stack Extract, format, and print exceptions and stack traces. In this example, the file handle for ``sys.stdout`` is substituted so the informational and traceback messages are mingled correctly: It also accepts arguments, not shown here, to start from an alternate place in the stack frame or to limit the depth of traversal. It returns a list of strings, each of which makes up one line of the output. Low-level Exception APIs Low-level Stack APIs Once extracted, the stack trace can be formatted using functions like ``format_exception()``, ``format_stack()``, etc. The format functions return a list of strings with messages formatted to be printed. There are shorthand functions for printing the formatted values, as well. Supporting Functions The ``StackSummary`` is an iterable container holding ``FrameSummary`` instances. The ``TracebackException`` class is a high-level interface for building a ``StackSummary`` while processing a traceback. The ``extract_stack()`` function works like ``extract_tb()``. The ``format()`` method produces a formatted version of the full traceback, while ``format_exception_only()`` shows only the exception message. The ``format()`` method produces a sequence of formatted strings ready to be printed. The ``traceback`` module works with the call stack to produce error messages. A *traceback* is a stack trace from the point of an exception handler down the call chain to the point where the exception was raised. Tracebacks also can be accessed from the current call stack up from the point of a call (and without the context of an error), which is useful for finding out the paths being followed into a function. The arguments to ``print_exception()`` are produced by ``sys.exc_info()``. The examples in this section use the module ``traceback_example.py``. The high-level API in ``traceback`` uses ``StackSummary`` and ``FrameSummary`` instances to hold the representation of the stack. These classes can be constructed from a traceback or the current execution stack, and then processed in the same ways. The low-level functions in ``traceback`` fall into several common categories.  There are functions for extracting raw tracebacks from the current runtime environment (either an exception handler for a traceback, or the regular stack). The extracted stack trace is a sequence of tuples containing the filename, line number, function name, and text of the source line. The output look like a traceback without an error message. The return value is a list of entries from each level of the stack represented by the traceback.  Each entry is a tuple with four parts: the name of the source file, the line number in that file, the name of the function, and the source text from that line with whitespace stripped (if the source is available). The same three arguments, exception type, exception value, and traceback, are used with ``format_exception()``. There are a similar set of functions for performing the same operations with the current call stack instead of a traceback. ``print_stack()`` prints the current stack, without generating an exception. To examine the current stack, construct a ``StackSummary`` from ``walk_stack()``. To process the traceback in some other way, such as formatting it differently, use ``extract_tb()`` to get the data in a usable form. TracebackException ``format_stack()`` prepares the stack trace in the same way that ``format_exception()`` prepares the traceback. ``print_exc()`` is just a shortcut for ``print_exception()``, which requires explicit arguments. ``print_exception()`` uses ``format_exception()`` to prepare the text. traceback --- Exceptions and Stack Traces traceback_example.py traceback_extract_stack.py traceback_extract_tb.py traceback_format_exception.py traceback_format_stack.py traceback_framesummary.py traceback_print_exc.py traceback_print_exception.py traceback_print_stack.py traceback_stacksummary.py traceback_tracebackexception.py 