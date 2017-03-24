��    	      d               �   ~  �      ,  ,  C  D  p  C   �    �  P        W  I  h  ~  �     1	  ,  H	  D  u
  C   �    �  P        \   Because applications built on ``asyncio`` are highly sensitive to greedy coroutines failing to yield control, there is support for detecting slow callbacks built into the event loop. Turn it on by enabling debugging, and control the definition of "slow" by setting the ``slow_callback_duration`` property of the loop to the number of seconds after which a warning should be emitted. Debugging with asyncio Finally, if an application using ``asyncio`` exits without cleaning up some of the coroutines or other resources, that may mean there is a logic error preventing some of the application code from running. Enabling ``ResourceWarning`` warnings causes these cases to be reported when the program exits. First, the event loop uses :mod:`logging` to emit status messages as it runs. Some of these are available if logging is enabled in an application. Others can be turned on by telling the loop to emit more debugging messages.  Call ``set_debug()`` passing a boolean value indicating whether or not debugging should be enabled. There are several useful debugging features built into ``asyncio``. Turning on debugging exposes some of the issues it has, including the fact that although ``inner()`` finishes it takes more time to do so than the ``slow_callback_duration`` that has been set and that the event loop is not being properly closed when the program exits. When run without debugging enabled, everything looks fine with this application. asyncio_debug.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 Because applications built on ``asyncio`` are highly sensitive to greedy coroutines failing to yield control, there is support for detecting slow callbacks built into the event loop. Turn it on by enabling debugging, and control the definition of "slow" by setting the ``slow_callback_duration`` property of the loop to the number of seconds after which a warning should be emitted. Debugging with asyncio Finally, if an application using ``asyncio`` exits without cleaning up some of the coroutines or other resources, that may mean there is a logic error preventing some of the application code from running. Enabling ``ResourceWarning`` warnings causes these cases to be reported when the program exits. First, the event loop uses :mod:`logging` to emit status messages as it runs. Some of these are available if logging is enabled in an application. Others can be turned on by telling the loop to emit more debugging messages.  Call ``set_debug()`` passing a boolean value indicating whether or not debugging should be enabled. There are several useful debugging features built into ``asyncio``. Turning on debugging exposes some of the issues it has, including the fact that although ``inner()`` finishes it takes more time to do so than the ``slow_callback_duration`` that has been set and that the event loop is not being properly closed when the program exits. When run without debugging enabled, everything looks fine with this application. asyncio_debug.py 