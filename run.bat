@ECHO OFF
CHCP 1252 >NUL
CD /D "%~dp0"

set TASK=run

set CLASSPATH=..\~lib\gradle-wrapper\gradle-wrapper.jar
SET JVM_ARGS=-Xmx64m -Xms64m 
java %JVM_ARGS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %TASK%

ECHO. & PAUSE

