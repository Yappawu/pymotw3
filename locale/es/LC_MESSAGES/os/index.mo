��    i      d              �    �  c   �  j   -  I   �  L   �     /	  6   ;	  w   r	  s  �	  R  ^  �  �  m   m  w   �  !   S  !   u  �   �  (   /  �   X  "   �  `   	  �   j  A  G      �      �  &   �  �  �  �   �  �   R     F  =  c  ]   �  6   �    6     ;  !   U  �   w        1    &  I  �   p  �    �   �  e   f   �   �     �!  Y   �"  �   #  �  
$  �   '  �  �'  t   �)  �   �)  -  �*  m   �,    %-  �   ).  �   �.  \   �/  X  �/  �  Q1  �   C3    �3  1   �5  Y   6  d   l6  J   �6  W   7  2   t7    �7  �   �8     �9  l   �9  }   :  O   �:     �:  �   ;  �   �;  z   <  m   �<  �   =  �   �=  <   Y>     �>     �>     �>     �>     �>     �>     ?     ?     $?     ??     T?     b?  
   v?     �?     �?     �?     �?     �?     �?     �?     @  
   @  I  $@    nA  c   �B  j   �B  I   YC  L   �C     �C  6   �C  w   3D  s  �D  R  F  �  rG  m   .I  w   �I  !   J  !   6J  �   XJ  (   �J  �   K  "   �K  `   �K  �   +L  A  M      JN      kN  &   �N  �  �N  �   IP  �   Q     R  =  $R  ]   bS  6   �S    �S     �T  !   U  �   8U     �U  1  �U  &  
W  �   1X  �  �X  �   hZ  e   '[  �   �[    g\  Y   �]  �   �]  �  �^  �   �a  �  �b  t   Hd  �   �d  -  Je  m   xg    �g  �   �h  �   |i  \   \j  X  �j  �  l  �   n    �n  1   �p  Y   �p  d   -q  J   �q  W   �q  2   5r    hr  �   }s     Pt  l   lt  }   �t  O   Wu     �u  �   �u  �   Zv  z   �v  m   Zw  �   �w  �   xx  <   y     Wy     dy     vy     �y     �y     �y     �y     �y     �y      z     z     #z  
   7z     Bz     Sz     bz     qz     �z     �z     �z     �z  
   �z   *Advanced Programming in the UNIX(R) Environment* By W. Richard Stevens and Stephen A. Rago.  Published by Addison-Wesley Professional, 2005.  ISBN-10: 0201433079 -- This book covers working with multiple processes, such as handling signals, closing duplicated file descriptors, etc. :mod:`multiprocessing` -- The ``multiprocessing`` module makes working with extra processes easier. :mod:`signal` -- The section on the ``signal`` module goes over signal handling techniques in more detail. :mod:`subprocess` -- The ``subprocess`` module supersedes ``os.popen()``. :mod:`tempfile` -- The ``tempfile`` module for working with temporary files. :pydoc:`os` :ref:`Python 2 to 3 porting notes for os <porting-os>` :ref:`shutil-directory-functions` -- The :mod:`shutil` module also includes functions for working with directory trees. A simple way to handle separate behavior in the child process is to check the return value of ``fork()`` and branch. More complex behavior may call for more code separation than a simple branch. In other cases, there may be an existing program that needs to be wrapped. For both of these situations, the ``exec*()`` series of functions can be used to run another program. After the fork, there are two processes running the same code. For a program to tell which one it is in, it needs to check the return value of ``fork()``. If the value is ``0``, the current process is the child.  If it is not ``0``, the program is running in the parent process and the return value is the process id of the child process. Another feature of the operating system exposed to a program though the ``os`` module is the environment. Variables set in the environment are visible as strings that can be read through ``os.environ`` or ``getenv()``. Environment variables are commonly used for configuration values such as search paths, file locations, and debug flags. This example shows how to retrieve an environment variable, and pass a value through to a child process. As a convenience, the ``spawn()`` family of functions handles the ``fork()`` and ``exec()`` in one statement: Before running the example, change the ``TEST_GID`` and ``TEST_UID`` values to match a real user defined on the system. Creating Processes with os.fork() Creating and Deleting Directories Detailed information about a file can be accessed using ``stat()`` or ``lstat()`` (for checking the status of something that might be a symbolic link). Detecting and Changing the Process Owner Error codes defined by the operating system and managed in the :mod:`errno` module can be translated to message strings using ``strerror()``. Examining the File System Contents For platforms and file systems that support them, there are functions for working with symlinks. If more information is needed than the names of the files, it is likely to be more efficient to use ``scandir()`` than ``listdir()`` because more information is collected in one system call when the directory is scanned. In this case, since it starts as root, the script can change the effective user and group for the process. Once the effective UID is changed, the process is limited to the permissions of that user. Because non-root users cannot change their effective group, the program needs to change the group before changing the user. Managing File System Permissions Managing the Process Environment Managing the Process Working Directory Many computationally intensive programs use multiple processes to work around the threading limitations of Python and the global interpreter lock. When starting several processes to run separate tasks, the master will need to wait for one or more of them to finish before starting new ones, to avoid overloading the server. There are a few different ways to do that using ``wait()`` and related functions. Many of these functions for working with processes have limited portability. For a more consistent way to work with processes in a platform independent manner, see the :mod:`subprocess` module instead. On Unix-like systems, file permissions can be changed using ``chmod()``, passing the mode as an integer. Mode values can be constructed using constants defined in the :mod:`stat` module.  This example toggles the user's execute permission bit: Operating System Error Codes Operating systems with hierarchical file systems have a concept of the *current working directory* -- the directory on the file system the process uses as the starting location when files are accessed with relative paths.  The current working directory can be retrieved with ``getcwd()`` and changed with ``chdir()``. Pass the process id of the target process, and ``waitpid()`` blocks until that process exits. Portable access to operating system specific features. Replacing or renaming an existing file is not idempotent and may expose applications to race conditions. The ``rename()`` and ``replace()`` functions implement safe algorithms for these actions, using atomic operations on POSIX-compliant systems when possible. Running External Commands Safely Replacing an Existing File Since the command is passed directly to the shell for processing, it can include shell syntax such as globbing or environment variables. Spawning New Processes The POSIX functions ``fork()`` and ``exec()`` (available under Mac OS X, Linux, and other Unix variants) are exposed via the ``os`` module. Entire books have been written about reliably using these functions, so check the library or bookstore for more details than are presented here in this introduction. The Python documentation for the ``os`` module is subtitled "Miscellaneous operating system interfaces". The module consists mostly of functions for creating and managing running processes or file system content (files and directories), with a few other bits of functionality thrown in besides. The ``os.environ`` object follows the standard Python mapping API for retrieving and setting values. Changes to ``os.environ`` are exported for child processes. The ``os`` module provides a wrapper for platform specific modules such as :mod:`posix`, :mod:`nt`, and :mod:`mac`. The API for functions available on all platforms should be the same, so using the ``os`` module offers some measure of portability. Not all functions are available on every platform, however. Many of the process management functions described in this summary are not available for Windows. The ``rename()`` and ``replace()`` functions work across filesystems, most of the time. Renaming a file may fail if it is being moved to a new fileystem or if the destination already exists. The environment variable ``$TMPDIR`` in this string is expanded when the shell runs the command line. The first argument is a mode indicating whether or not to wait for the process to finish before returning.  This example waits.  Use ``P_NOWAIT`` to let the other process start, but then resume in the current process. The following example shows the real and effective user and group information for a process, and then changes the effective values. This is similar to what a daemon would need to do when it starts as root during a system boot, to lower the privilege level and run as a different user. The function ``access()`` can be used to test the access rights a process has for a file. The function ``walk()`` traverses a directory recursively and for each subdirectory generates a ``tuple`` containing the directory path, any immediate sub-directories of that path, and a list of the names of any files in that directory. The library documentation for ``access()`` includes two special warnings. First, there is not much sense in calling ``access()`` to test whether a file can be opened before actually calling ``open()`` on it. There is a small, but real, window of time between the two calls during which the permissions on the file could change. The other warning applies mostly to networked file systems that extend the POSIX permission semantics. Some file system types may respond to the POSIX call that a process has permission to access a file, then report a failure when the attempt is made using ``open()`` for some reason not tested via the POSIX call. All in all, it is better to call ``open()`` with the required mode and catch the ``IOError`` raised if there is a problem. The most basic way to run a separate command, without interacting with it at all, is ``system()``. It takes a single string argument, which is the command line to be executed by a sub-process running a shell. The next set of functions provided by ``os`` are used for determining and changing the process owner ids. These are most frequently used by authors of daemons or special system programs that need to change permission level rather than running as ``root``. This section does not try to explain all of the intricate details of Unix security, process owners, etc. See the references list at the end of this section for more details. The output will vary based on the state of the system each time the example is run, but it will look something like: The output will vary depending on how the example code was installed. Try passing different filenames on the command line to ``os_stat.py``. The parent can send signals to the child process using ``kill()`` and the :mod:`signal` module. First, define a signal handler to be invoked when the signal is received.  Then ``fork()``, and in the parent pause a short amount of time before sending a ``USR1`` signal using ``kill()``. This example uses a short pause to give the child process time to set up the signal handler. A real application, would not need (or want) to call ``sleep()``.  In the child, set up the signal handler and go to sleep for a while to give the parent time to send the signal. The results will vary depending on how the example code is installed, but the output will be similar to this: The return value from ``wait()`` is a tuple containing the process id and exit status combined into a 16-bit value.  The low byte is the number of the signal that killed the process, and the high byte is the status code returned by the process when it exited. The return value is a list of all of the named members of the directory given. No distinction is made between files, subdirectories, or symlinks. The return value of ``system()`` is the exit value of the shell running the program packed into a 16 bit number, with the high byte the exit status and the low byte the signal number that caused the process to die, or zero. The script assumes it has the permissions necessary to modify the mode of the file when run. The values do not change because when it is not running as root, a process cannot change its effective owner value. Any attempt to set the effective user id or group id to anything other than that of the current user causes an ``OSError``.  Running the same script using ``sudo`` so that it starts out with root privileges is a different story. There are many variations of ``exec()``, depending on the form in which the arguments are available, whether the path and environment of the parent process should be copied to the child, etc.  For all variations, the first argument is a path or filename and the remaining arguments control how that program runs. They are either passed as command line arguments or override the process "environment" (see ``os.environ`` and ``os.getenv``).  Refer to the library documentation for complete details. There are several functions for working with directories on the file system, including creating, listing contents, and removing them. There are two sets of functions for creating and deleting directories. When creating a new directory with ``mkdir()``, all of the parent directories must already exist. When removing a directory with ``rmdir()``, only the leaf directory (the last part of the path) is actually removed. In contrast, ``makedirs()`` and ``removedirs()`` operate on all of the nodes in the path. ``makedirs()`` will create any parts of the path that do not exist, and ``removedirs()`` will remove all of the parent directories, as long as they are empty. This example shows a recursive directory listing. This example shows the messages associated with some error codes that come up frequently. This is getting into shell trickery, though, and there are better ways to accomplish the same thing. To create a new process as a clone of the current process, use ``fork()``: To prepare a list of the contents of a directory on the file system, use ``listdir()``. To wait for a specific process, use ``waitpid()``. Unless the command is explicitly run in the background, the call to ``system()`` blocks until it is complete. Standard input, output, and error from the child process are tied to the appropriate streams owned by the caller by default, but can be redirected using shell syntax. Use ``symlink()`` to create a symbolic link and ``readlink()`` for reading it to determine the original file pointed to by the link.  The ``lstat()`` function is like ``stat()``, but operates on symbolic links. Waiting for Child Processes When a program is run by ``exec()``, the code from that program replaces the code from the existing process. When it does not matter which child process might exit first, use ``wait()``.  It returns as soon as any child process exits. When run as user with id of 502 and group 502 on OS X, this output is produced: Working with Symbolic Links `Delve into Unix Process Creation <http://www.ibm.com/developerworks/aix/library/au-unixprocess.html>`__ -- Explains the life cycle of a Unix process. `Speaking UNIX, Part 8. <http://www.ibm.com/developerworks/aix/library/au-speakingunix8/index.html>`__ -- Learn how UNIX multitasks. `Standard streams <https://en.wikipedia.org/wiki/Standard_streams>`__ -- For more discussion of stdin, stdout, and stderr. ``os.curdir`` and ``os.pardir`` are used to refer to the current and parent directories in a portable manner. ``scandir()`` returns a sequence of ``DirEntry`` instances for the items in the directory. The object has several attributes and methods for accessing metadata about the file. ``wait3()`` and ``wait4()`` work in a similar manner, but return more detailed information about the child process with the pid, exit status, and resource usage. os --- Portable access to operating system specific features os_access.py os_cwd_example.py os_directories.py os_environ_example.py os_exec_example.py os_fork_example.py os_kill_example.py os_listdir.py os_process_user_example.py os_rename_replace.py os_scandir.py os_spawn_example.py os_stat.py os_stat_chmod.py os_strerror.py os_symlinks.py os_system_background.py os_system_example.py os_system_shell.py os_wait_example.py os_waitpid_example.py os_walk.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 *Advanced Programming in the UNIX(R) Environment* By W. Richard Stevens and Stephen A. Rago.  Published by Addison-Wesley Professional, 2005.  ISBN-10: 0201433079 -- This book covers working with multiple processes, such as handling signals, closing duplicated file descriptors, etc. :mod:`multiprocessing` -- The ``multiprocessing`` module makes working with extra processes easier. :mod:`signal` -- The section on the ``signal`` module goes over signal handling techniques in more detail. :mod:`subprocess` -- The ``subprocess`` module supersedes ``os.popen()``. :mod:`tempfile` -- The ``tempfile`` module for working with temporary files. :pydoc:`os` :ref:`Python 2 to 3 porting notes for os <porting-os>` :ref:`shutil-directory-functions` -- The :mod:`shutil` module also includes functions for working with directory trees. A simple way to handle separate behavior in the child process is to check the return value of ``fork()`` and branch. More complex behavior may call for more code separation than a simple branch. In other cases, there may be an existing program that needs to be wrapped. For both of these situations, the ``exec*()`` series of functions can be used to run another program. After the fork, there are two processes running the same code. For a program to tell which one it is in, it needs to check the return value of ``fork()``. If the value is ``0``, the current process is the child.  If it is not ``0``, the program is running in the parent process and the return value is the process id of the child process. Another feature of the operating system exposed to a program though the ``os`` module is the environment. Variables set in the environment are visible as strings that can be read through ``os.environ`` or ``getenv()``. Environment variables are commonly used for configuration values such as search paths, file locations, and debug flags. This example shows how to retrieve an environment variable, and pass a value through to a child process. As a convenience, the ``spawn()`` family of functions handles the ``fork()`` and ``exec()`` in one statement: Before running the example, change the ``TEST_GID`` and ``TEST_UID`` values to match a real user defined on the system. Creating Processes with os.fork() Creating and Deleting Directories Detailed information about a file can be accessed using ``stat()`` or ``lstat()`` (for checking the status of something that might be a symbolic link). Detecting and Changing the Process Owner Error codes defined by the operating system and managed in the :mod:`errno` module can be translated to message strings using ``strerror()``. Examining the File System Contents For platforms and file systems that support them, there are functions for working with symlinks. If more information is needed than the names of the files, it is likely to be more efficient to use ``scandir()`` than ``listdir()`` because more information is collected in one system call when the directory is scanned. In this case, since it starts as root, the script can change the effective user and group for the process. Once the effective UID is changed, the process is limited to the permissions of that user. Because non-root users cannot change their effective group, the program needs to change the group before changing the user. Managing File System Permissions Managing the Process Environment Managing the Process Working Directory Many computationally intensive programs use multiple processes to work around the threading limitations of Python and the global interpreter lock. When starting several processes to run separate tasks, the master will need to wait for one or more of them to finish before starting new ones, to avoid overloading the server. There are a few different ways to do that using ``wait()`` and related functions. Many of these functions for working with processes have limited portability. For a more consistent way to work with processes in a platform independent manner, see the :mod:`subprocess` module instead. On Unix-like systems, file permissions can be changed using ``chmod()``, passing the mode as an integer. Mode values can be constructed using constants defined in the :mod:`stat` module.  This example toggles the user's execute permission bit: Operating System Error Codes Operating systems with hierarchical file systems have a concept of the *current working directory* -- the directory on the file system the process uses as the starting location when files are accessed with relative paths.  The current working directory can be retrieved with ``getcwd()`` and changed with ``chdir()``. Pass the process id of the target process, and ``waitpid()`` blocks until that process exits. Portable access to operating system specific features. Replacing or renaming an existing file is not idempotent and may expose applications to race conditions. The ``rename()`` and ``replace()`` functions implement safe algorithms for these actions, using atomic operations on POSIX-compliant systems when possible. Running External Commands Safely Replacing an Existing File Since the command is passed directly to the shell for processing, it can include shell syntax such as globbing or environment variables. Spawning New Processes The POSIX functions ``fork()`` and ``exec()`` (available under Mac OS X, Linux, and other Unix variants) are exposed via the ``os`` module. Entire books have been written about reliably using these functions, so check the library or bookstore for more details than are presented here in this introduction. The Python documentation for the ``os`` module is subtitled "Miscellaneous operating system interfaces". The module consists mostly of functions for creating and managing running processes or file system content (files and directories), with a few other bits of functionality thrown in besides. The ``os.environ`` object follows the standard Python mapping API for retrieving and setting values. Changes to ``os.environ`` are exported for child processes. The ``os`` module provides a wrapper for platform specific modules such as :mod:`posix`, :mod:`nt`, and :mod:`mac`. The API for functions available on all platforms should be the same, so using the ``os`` module offers some measure of portability. Not all functions are available on every platform, however. Many of the process management functions described in this summary are not available for Windows. The ``rename()`` and ``replace()`` functions work across filesystems, most of the time. Renaming a file may fail if it is being moved to a new fileystem or if the destination already exists. The environment variable ``$TMPDIR`` in this string is expanded when the shell runs the command line. The first argument is a mode indicating whether or not to wait for the process to finish before returning.  This example waits.  Use ``P_NOWAIT`` to let the other process start, but then resume in the current process. The following example shows the real and effective user and group information for a process, and then changes the effective values. This is similar to what a daemon would need to do when it starts as root during a system boot, to lower the privilege level and run as a different user. The function ``access()`` can be used to test the access rights a process has for a file. The function ``walk()`` traverses a directory recursively and for each subdirectory generates a ``tuple`` containing the directory path, any immediate sub-directories of that path, and a list of the names of any files in that directory. The library documentation for ``access()`` includes two special warnings. First, there is not much sense in calling ``access()`` to test whether a file can be opened before actually calling ``open()`` on it. There is a small, but real, window of time between the two calls during which the permissions on the file could change. The other warning applies mostly to networked file systems that extend the POSIX permission semantics. Some file system types may respond to the POSIX call that a process has permission to access a file, then report a failure when the attempt is made using ``open()`` for some reason not tested via the POSIX call. All in all, it is better to call ``open()`` with the required mode and catch the ``IOError`` raised if there is a problem. The most basic way to run a separate command, without interacting with it at all, is ``system()``. It takes a single string argument, which is the command line to be executed by a sub-process running a shell. The next set of functions provided by ``os`` are used for determining and changing the process owner ids. These are most frequently used by authors of daemons or special system programs that need to change permission level rather than running as ``root``. This section does not try to explain all of the intricate details of Unix security, process owners, etc. See the references list at the end of this section for more details. The output will vary based on the state of the system each time the example is run, but it will look something like: The output will vary depending on how the example code was installed. Try passing different filenames on the command line to ``os_stat.py``. The parent can send signals to the child process using ``kill()`` and the :mod:`signal` module. First, define a signal handler to be invoked when the signal is received.  Then ``fork()``, and in the parent pause a short amount of time before sending a ``USR1`` signal using ``kill()``. This example uses a short pause to give the child process time to set up the signal handler. A real application, would not need (or want) to call ``sleep()``.  In the child, set up the signal handler and go to sleep for a while to give the parent time to send the signal. The results will vary depending on how the example code is installed, but the output will be similar to this: The return value from ``wait()`` is a tuple containing the process id and exit status combined into a 16-bit value.  The low byte is the number of the signal that killed the process, and the high byte is the status code returned by the process when it exited. The return value is a list of all of the named members of the directory given. No distinction is made between files, subdirectories, or symlinks. The return value of ``system()`` is the exit value of the shell running the program packed into a 16 bit number, with the high byte the exit status and the low byte the signal number that caused the process to die, or zero. The script assumes it has the permissions necessary to modify the mode of the file when run. The values do not change because when it is not running as root, a process cannot change its effective owner value. Any attempt to set the effective user id or group id to anything other than that of the current user causes an ``OSError``.  Running the same script using ``sudo`` so that it starts out with root privileges is a different story. There are many variations of ``exec()``, depending on the form in which the arguments are available, whether the path and environment of the parent process should be copied to the child, etc.  For all variations, the first argument is a path or filename and the remaining arguments control how that program runs. They are either passed as command line arguments or override the process "environment" (see ``os.environ`` and ``os.getenv``).  Refer to the library documentation for complete details. There are several functions for working with directories on the file system, including creating, listing contents, and removing them. There are two sets of functions for creating and deleting directories. When creating a new directory with ``mkdir()``, all of the parent directories must already exist. When removing a directory with ``rmdir()``, only the leaf directory (the last part of the path) is actually removed. In contrast, ``makedirs()`` and ``removedirs()`` operate on all of the nodes in the path. ``makedirs()`` will create any parts of the path that do not exist, and ``removedirs()`` will remove all of the parent directories, as long as they are empty. This example shows a recursive directory listing. This example shows the messages associated with some error codes that come up frequently. This is getting into shell trickery, though, and there are better ways to accomplish the same thing. To create a new process as a clone of the current process, use ``fork()``: To prepare a list of the contents of a directory on the file system, use ``listdir()``. To wait for a specific process, use ``waitpid()``. Unless the command is explicitly run in the background, the call to ``system()`` blocks until it is complete. Standard input, output, and error from the child process are tied to the appropriate streams owned by the caller by default, but can be redirected using shell syntax. Use ``symlink()`` to create a symbolic link and ``readlink()`` for reading it to determine the original file pointed to by the link.  The ``lstat()`` function is like ``stat()``, but operates on symbolic links. Waiting for Child Processes When a program is run by ``exec()``, the code from that program replaces the code from the existing process. When it does not matter which child process might exit first, use ``wait()``.  It returns as soon as any child process exits. When run as user with id of 502 and group 502 on OS X, this output is produced: Working with Symbolic Links `Delve into Unix Process Creation <http://www.ibm.com/developerworks/aix/library/au-unixprocess.html>`__ -- Explains the life cycle of a Unix process. `Speaking UNIX, Part 8. <http://www.ibm.com/developerworks/aix/library/au-speakingunix8/index.html>`__ -- Learn how UNIX multitasks. `Standard streams <https://en.wikipedia.org/wiki/Standard_streams>`__ -- For more discussion of stdin, stdout, and stderr. ``os.curdir`` and ``os.pardir`` are used to refer to the current and parent directories in a portable manner. ``scandir()`` returns a sequence of ``DirEntry`` instances for the items in the directory. The object has several attributes and methods for accessing metadata about the file. ``wait3()`` and ``wait4()`` work in a similar manner, but return more detailed information about the child process with the pid, exit status, and resource usage. os --- Portable access to operating system specific features os_access.py os_cwd_example.py os_directories.py os_environ_example.py os_exec_example.py os_fork_example.py os_kill_example.py os_listdir.py os_process_user_example.py os_rename_replace.py os_scandir.py os_spawn_example.py os_stat.py os_stat_chmod.py os_strerror.py os_symlinks.py os_system_background.py os_system_example.py os_system_shell.py os_wait_example.py os_waitpid_example.py os_walk.py 