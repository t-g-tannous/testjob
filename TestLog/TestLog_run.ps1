$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Dtalend.component.manager.m2.repository=%cd%/../lib' '-Xms256M' '-Xmx1024M' -cp '.;../lib/routines.jar;../lib/log4j-to-slf4j-2.13.2.jar;../lib/slf4j-log4j12-1.7.29.jar;../lib/log4j-1.2.17.jar;../lib/jboss-marshalling-2.0.12.Final.jar;../lib/dom4j-2.1.3.jar;../lib/slf4j-api-1.7.29.jar;../lib/crypto-utils-0.31.12.jar;testlog_0_1.jar;' ei_attachments_build.testlog_0_1.TestLog --context=prod $args
