echo -e '*1\r\n$4\r\nPING\r\n' | netcat -w1 127.0.0.1 6379
