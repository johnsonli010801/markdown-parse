CLASSPATH = lib/*:.
TryCommonMark.class: TryCommonMark.java
	javac -g -cp $(CLASSPATH) TryCommonMark.java
MarkdownParse.class:MarkdownParse.java 
	javac MarkdownParse.java
MarkdownParseTest.class:MarkdownParseTest.java MarkdownParse.class
	javac -g -cp $(CLASSPATH) MarkdownParseTest.java
test: MarkdownParseTest.class MarkdownParse.class
	java -g -cp $(CLASSPATH) org.junit.runner.JUnitCore MarkdownParseTest
