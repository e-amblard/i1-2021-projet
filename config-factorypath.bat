@ECHO OFF

CD /D "%~dp0"

IF EXIST .factorypath  DEL .factorypath

set TASK=eclipse

set CLASSPATH=..\~lib\gradle-wrapper\gradle-wrapper.jar
SET JVM_ARGS=-Xmx64m -Xms64m 
java %JVM_ARGS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %TASK%

ECHO. & PAUSE
