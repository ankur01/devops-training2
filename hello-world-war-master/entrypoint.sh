#!/bin/bash

bash setRuntimeUser.sh

su -c "exec /usr/local/tomcat/bin/catalina.sh run" $USER
