��    ;      �              �  >  �  �     
  �  �   �  �  W  F   	     Y	     j	  	   �	     �	  �   �	  5  `
     �     �     �  i  �  E  +     q  M   �  q   �  �   E     �     �    �  �   	  =   �  K   �  w   ;  �   �  �   �  �   S  �   �  G   �  c   �  |   A  U   �       ^  *     �     �     �     �     �     �  &   �          5     S      r      �     �     �     �          !     >  3   T  9   �  I  �  >    �   K  
  �  �   �  �  �   F   Q"     �"     �"  	   �"     �"  �   �"  5  �#     �$     �$     �$  i   %  E  j'     �(  M   �(  q   )  �   �)     *     *    1*  �   H+  =   �+  K   .,  w   z,  �   �,  �   �-  �   �.  �   )/  G   �/  c   0  |   �0  U   �0     S1  ^  i1     �2     �2     �2     �2     �2     3  &   13     X3     t3     �3      �3      �3     �3     4     &4     D4     `4     }4  3   �4  9   �4   Although it is better to use the *poison pill* method of signaling to a process that it should exit (see :ref:`multiprocessing-queues`, later in this chapter), if a process appears hung or deadlocked it can be useful to be able to kill it forcibly.  Calling ``terminate()`` on a process object kills the child process. Although the simplest way to start a job in a separate process is to use ``Process`` and pass a target function, it is also possible to use a custom subclass. By default, ``join()`` blocks indefinitely. It is also possible to pass a timeout argument (a float representing the number of seconds to wait for the process to become inactive). If the process does not complete within the timeout period, ``join()`` returns anyway. By default, the logging level is set to ``NOTSET`` so no messages are produced.  Pass a different level to initialize the logger to the level of detail desired. By default, the main program will not exit until all of the children have exited. There are times when starting a background process that runs without blocking the main program from exiting is useful, such as in services where there may not be an easy way to interrupt the worker, or where letting it die in the middle of its work does not lose or corrupt data (for example, a task that generates "heart beats" for a service monitoring tool). Calling the main program produces output similar to the first example. Daemon Processes Determining the Current Process Exit Code Importable Target Functions It is important to ``join()`` the process after terminating it in order to give the process management code time to update the status of the object to reflect the termination. It usually more useful to be able to spawn a process with arguments to tell it what work to do.  Unlike with ``threading``, in order to pass arguments to a ``multiprocessing`` ``Process`` the arguments must be able to be serialized using :mod:`pickle`.  This example passes each worker a number to be printed. Logging Meaning Multiprocessing Exit Codes One difference between the ``threading`` and ``multiprocessing`` examples is the extra protection for ``__main__`` used in the ``multiprocessing`` examples.  Due to the way the new processes are started, the child process needs to be able to import the script containing the target function.  Wrapping the main part of the application in a check for ``__main__`` ensures that it is not run recursively in each child as the module is imported.  Another approach is to import the target function from a separate script.  For example, ``multiprocessing_import_main.py`` uses a worker function defined in a second module. Passing arguments to identify or name the process is cumbersome, and unnecessary.  Each ``Process`` instance has a name with a default value that can be changed as the process is created. Naming processes is useful for keeping track of them, especially in applications with multiple types of processes running simultaneously. Process Exit Status Processes that raise an exception automatically get an :attr:`exitcode` of 1. Since the main process waits for the daemon to exit using ``join()``, the "Exiting" message is printed this time. Since the timeout passed is less than the amount of time the daemon sleeps, the process is still "alive" after ``join()`` returns. Subclassing Process Terminating Processes The daemon process is terminated automatically before the main program exits, which avoids leaving orphaned processes running.  This can be verified by looking for the process id value printed when the program runs, and then checking for that process with a command like ``ps``. The debug output includes the name of the current process on each line. The lines with ``Process-3`` in the name column correspond to the unnamed process ``worker_1``. The derived class should override :meth:`run` to do its work. The integer argument is now included in the message printed by each worker. The logger can also be configured through the ``logging`` configuration file API, using the name "``multiprocessing``". The output does not include the "Exiting" message from the daemon process, since all of the non-daemon processes (including the main program) exit before the daemon process wakes up from its two second sleep. The output includes the word "Worker" printed five times, although it may not come out entirely clean, depending on the order of execution, because each process is competing for access to the output stream. The simplest way to spawn a second process is to instantiate a ``Process`` object with a target function and call ``start()`` to let it begin working. The status code produced when the process exits can be accessed via the :attr:`exitcode` attribute.  The ranges allowed are listed in :table:`Multiprocessing Exit Codes`. The worker function is defined in ``multiprocessing_import_worker.py``. To manipulate the logger directly (change its level setting or add handlers), use ``get_logger()``. To mark a process as a daemon, set its :attr:`daemon` attribute to ``True``. The default is for processes to not be daemons. To wait until a process has completed its work and exited, use the ``join()`` method. Waiting for Processes When debugging concurrency issues, it can be useful to have access to the internals of the objects provided by ``multiprocessing``. There is a convenient module-level function to enable logging called ``log_to_stderr()``.  It sets up a logger object using :mod:`logging` and adds a handler so that log messages are sent to the standard error channel. ``< 0`` ``== 0`` ``> 0`` multiprocessing Basics multiprocessing_daemon.py multiprocessing_daemon_join.py multiprocessing_daemon_join_timeout.py multiprocessing_exitcode.py multiprocessing_get_logger.py multiprocessing_import_main.py multiprocessing_import_worker.py multiprocessing_log_to_stderr.py multiprocessing_names.py multiprocessing_simple.py multiprocessing_simpleargs.py multiprocessing_subclass.py multiprocessing_terminate.py no error was produced the process had an error, and exited with that code the process was killed with a signal of ``-1 * exitcode`` Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 Although it is better to use the *poison pill* method of signaling to a process that it should exit (see :ref:`multiprocessing-queues`, later in this chapter), if a process appears hung or deadlocked it can be useful to be able to kill it forcibly.  Calling ``terminate()`` on a process object kills the child process. Although the simplest way to start a job in a separate process is to use ``Process`` and pass a target function, it is also possible to use a custom subclass. By default, ``join()`` blocks indefinitely. It is also possible to pass a timeout argument (a float representing the number of seconds to wait for the process to become inactive). If the process does not complete within the timeout period, ``join()`` returns anyway. By default, the logging level is set to ``NOTSET`` so no messages are produced.  Pass a different level to initialize the logger to the level of detail desired. By default, the main program will not exit until all of the children have exited. There are times when starting a background process that runs without blocking the main program from exiting is useful, such as in services where there may not be an easy way to interrupt the worker, or where letting it die in the middle of its work does not lose or corrupt data (for example, a task that generates "heart beats" for a service monitoring tool). Calling the main program produces output similar to the first example. Daemon Processes Determining the Current Process Exit Code Importable Target Functions It is important to ``join()`` the process after terminating it in order to give the process management code time to update the status of the object to reflect the termination. It usually more useful to be able to spawn a process with arguments to tell it what work to do.  Unlike with ``threading``, in order to pass arguments to a ``multiprocessing`` ``Process`` the arguments must be able to be serialized using :mod:`pickle`.  This example passes each worker a number to be printed. Logging Meaning Multiprocessing Exit Codes One difference between the ``threading`` and ``multiprocessing`` examples is the extra protection for ``__main__`` used in the ``multiprocessing`` examples.  Due to the way the new processes are started, the child process needs to be able to import the script containing the target function.  Wrapping the main part of the application in a check for ``__main__`` ensures that it is not run recursively in each child as the module is imported.  Another approach is to import the target function from a separate script.  For example, ``multiprocessing_import_main.py`` uses a worker function defined in a second module. Passing arguments to identify or name the process is cumbersome, and unnecessary.  Each ``Process`` instance has a name with a default value that can be changed as the process is created. Naming processes is useful for keeping track of them, especially in applications with multiple types of processes running simultaneously. Process Exit Status Processes that raise an exception automatically get an :attr:`exitcode` of 1. Since the main process waits for the daemon to exit using ``join()``, the "Exiting" message is printed this time. Since the timeout passed is less than the amount of time the daemon sleeps, the process is still "alive" after ``join()`` returns. Subclassing Process Terminating Processes The daemon process is terminated automatically before the main program exits, which avoids leaving orphaned processes running.  This can be verified by looking for the process id value printed when the program runs, and then checking for that process with a command like ``ps``. The debug output includes the name of the current process on each line. The lines with ``Process-3`` in the name column correspond to the unnamed process ``worker_1``. The derived class should override :meth:`run` to do its work. The integer argument is now included in the message printed by each worker. The logger can also be configured through the ``logging`` configuration file API, using the name "``multiprocessing``". The output does not include the "Exiting" message from the daemon process, since all of the non-daemon processes (including the main program) exit before the daemon process wakes up from its two second sleep. The output includes the word "Worker" printed five times, although it may not come out entirely clean, depending on the order of execution, because each process is competing for access to the output stream. The simplest way to spawn a second process is to instantiate a ``Process`` object with a target function and call ``start()`` to let it begin working. The status code produced when the process exits can be accessed via the :attr:`exitcode` attribute.  The ranges allowed are listed in :table:`Multiprocessing Exit Codes`. The worker function is defined in ``multiprocessing_import_worker.py``. To manipulate the logger directly (change its level setting or add handlers), use ``get_logger()``. To mark a process as a daemon, set its :attr:`daemon` attribute to ``True``. The default is for processes to not be daemons. To wait until a process has completed its work and exited, use the ``join()`` method. Waiting for Processes When debugging concurrency issues, it can be useful to have access to the internals of the objects provided by ``multiprocessing``. There is a convenient module-level function to enable logging called ``log_to_stderr()``.  It sets up a logger object using :mod:`logging` and adds a handler so that log messages are sent to the standard error channel. ``< 0`` ``== 0`` ``> 0`` multiprocessing Basics multiprocessing_daemon.py multiprocessing_daemon_join.py multiprocessing_daemon_join_timeout.py multiprocessing_exitcode.py multiprocessing_get_logger.py multiprocessing_import_main.py multiprocessing_import_worker.py multiprocessing_log_to_stderr.py multiprocessing_names.py multiprocessing_simple.py multiprocessing_simpleargs.py multiprocessing_subclass.py multiprocessing_terminate.py no error was produced the process had an error, and exited with that code the process was killed with a signal of ``-1 * exitcode`` 