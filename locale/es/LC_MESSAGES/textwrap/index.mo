��    '      T              �     �     �     �     �  D   �       �   .  �        �  
   �  _   �     #  �   A  R   %  �   x  �   q  m     �   �  �  	  �   �
  (   �  Y   �  o   B  .   �  �   �  O  �     !  �   6     ,  '   4     \     o     �     �     �     �     �     �  I  
     T     f     �     �  D   �     �  �   �  �   �     n  
     _   �     �  �     R   �  �   ?  �   8  m   �  �   H  �  �  �   �  (   �  Y   �  o   	  .   y  �   �  O  �     �  �   �     �  '   �     #      6      J      [      r      �      �      �    :pydoc:`textwrap` Combining Dedent and Fill Example Data Filling Paragraphs Formatting text by adjusting where line breaks occur in a paragraph. Hanging Indents If non-whitespace text is removed from the original text as part of the truncation, it is replaced with a placeholder value. The default value ``[...]`` can be replaced by providing a ``placeholder`` argument to ``shorten()``. In the same way that it is possible to set the width of the output, the indent of the first line can be controlled independently of subsequent lines. Indenting Blocks Input like Next, the dedented text can be passed through ``fill()`` with a few different ``width`` values. Removing Existing Indentation Since "dedent" is the opposite of "indent," the result is a block of text with the common initial whitespace from each line removed. If one line is already indented more than another, some of the whitespace will not be removed. The ``fill()`` function takes text as input and produces formatted text as output. The ``textwrap`` module can be used to format text for output in situations where pretty-printing is desired. It offers programmatic functionality similar to the paragraph wrapping or filling features found in many text editors and word processors. The block of text is split on newlines, the prefix is added to each line that contains text, and then the lines are combined back into a new string and returned. The examples in this section use the module ``textwrap_example.py``, which contains a string ``sample_text``. The indent values can include nonwhitespace characters, too. The hanging indent can be prefixed with ``*`` to produce bullet points, for example. The previous example has embedded tabs and extra spaces mixed into the middle of the output, so it is not formatted very cleanly. Removing the common whitespace prefix from all of the lines in the sample text with ``dedent()`` produces better results and allows the use of docstrings or embedded multiline strings straight from Python code while removing the formatting of the code itself. The sample string has an artificial indent level introduced for illustrating this feature. The results are something less than desirable.  The text is now left justified, but the first line retains its indent and the spaces from the front of each subsequent line are embedded in the paragraph. The results are starting to look better. This example adds the prefix ``EVEN`` to lines that contain an even number of characters. This makes it possible to produce a hanging indent, where the first line is indented less than the other lines. This produces outputs in the specified widths. To control which lines receive the new prefix, pass a callable as the ``predicate`` argument to ``indent()``. The callable will be invoked for each line of text in turn and the prefix will be added for lines where the return value is true. To truncate text to create a summary or preview, use ``shorten()``. All existing whitespace, such as tabs, newlines, and series of multiple spaces, will be standardized to a single space. Then the text will be truncated to a length less than or equal to what is requested, between word boundaries so that no partial words are included. Truncating Long Text Use the ``indent()`` function to add consistent prefix text to all of the lines in a string. This example formats the same example text as though it was part of an email message being quoted in the reply, using ``>`` as the prefix for each line. becomes textwrap --- Formatting Text Paragraphs textwrap_dedent.py textwrap_example.py textwrap_fill.py textwrap_fill_width.py textwrap_hanging_indent.py textwrap_indent.py textwrap_indent_predicate.py textwrap_shorten.py Project-Id-Version: PyMOTW-3 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-24 18:41-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 :pydoc:`textwrap` Combining Dedent and Fill Example Data Filling Paragraphs Formatting text by adjusting where line breaks occur in a paragraph. Hanging Indents If non-whitespace text is removed from the original text as part of the truncation, it is replaced with a placeholder value. The default value ``[...]`` can be replaced by providing a ``placeholder`` argument to ``shorten()``. In the same way that it is possible to set the width of the output, the indent of the first line can be controlled independently of subsequent lines. Indenting Blocks Input like Next, the dedented text can be passed through ``fill()`` with a few different ``width`` values. Removing Existing Indentation Since "dedent" is the opposite of "indent," the result is a block of text with the common initial whitespace from each line removed. If one line is already indented more than another, some of the whitespace will not be removed. The ``fill()`` function takes text as input and produces formatted text as output. The ``textwrap`` module can be used to format text for output in situations where pretty-printing is desired. It offers programmatic functionality similar to the paragraph wrapping or filling features found in many text editors and word processors. The block of text is split on newlines, the prefix is added to each line that contains text, and then the lines are combined back into a new string and returned. The examples in this section use the module ``textwrap_example.py``, which contains a string ``sample_text``. The indent values can include nonwhitespace characters, too. The hanging indent can be prefixed with ``*`` to produce bullet points, for example. The previous example has embedded tabs and extra spaces mixed into the middle of the output, so it is not formatted very cleanly. Removing the common whitespace prefix from all of the lines in the sample text with ``dedent()`` produces better results and allows the use of docstrings or embedded multiline strings straight from Python code while removing the formatting of the code itself. The sample string has an artificial indent level introduced for illustrating this feature. The results are something less than desirable.  The text is now left justified, but the first line retains its indent and the spaces from the front of each subsequent line are embedded in the paragraph. The results are starting to look better. This example adds the prefix ``EVEN`` to lines that contain an even number of characters. This makes it possible to produce a hanging indent, where the first line is indented less than the other lines. This produces outputs in the specified widths. To control which lines receive the new prefix, pass a callable as the ``predicate`` argument to ``indent()``. The callable will be invoked for each line of text in turn and the prefix will be added for lines where the return value is true. To truncate text to create a summary or preview, use ``shorten()``. All existing whitespace, such as tabs, newlines, and series of multiple spaces, will be standardized to a single space. Then the text will be truncated to a length less than or equal to what is requested, between word boundaries so that no partial words are included. Truncating Long Text Use the ``indent()`` function to add consistent prefix text to all of the lines in a string. This example formats the same example text as though it was part of an email message being quoted in the reply, using ``>`` as the prefix for each line. becomes textwrap --- Formatting Text Paragraphs textwrap_dedent.py textwrap_example.py textwrap_fill.py textwrap_fill_width.py textwrap_hanging_indent.py textwrap_indent.py textwrap_indent_predicate.py textwrap_shorten.py 