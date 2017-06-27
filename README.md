<!--
{% comment %}
Licensed to Julian Hyde under one or more
contributor license agreements.  See the NOTICE file distributed with
this work for additional information regarding copyright ownership.
The ASF licenses this file to you under the Apache License, Version 2.0
(the "License"); you may not use this file except in compliance with
the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
{% endcomment %}
-->
docker-oracle
============================

Oracle Express Edition 11g Release 2 on Ubuntu 16.04 LTS,
based upon [wnameless/docker-oracle-xe-11g](https://github.com/wnameless/docker-oracle-xe-11g).

### Installation (with Ubuntu 16.04)
```
docker pull hydromatic/oracle
```

Run with 22 and 1521 ports opened:
```
docker run -d -p 49160:22 -p 49161:1521 hydromatic/oracle
```

Run this, if you want the database to be connected remotely:
```
docker run -d -p 49160:22 -p 49161:1521 -e ORACLE_ALLOW_REMOTE=true hydromatic/oracle
```

Connect database with following setting:
```
hostname: localhost
port: 49161
sid: xe
username: system
password: oracle
```

Password for SYS & SYSTEM
```
oracle
```

Login by SSH
```
ssh root@localhost -p 49160
password: admin
```

Browse via SQL*Plus
```
sqlplus scott/tiger
> exit

sqlplus foodmart/foodmart
> exit
```
