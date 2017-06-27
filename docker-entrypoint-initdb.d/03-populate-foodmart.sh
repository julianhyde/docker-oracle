#!/bin/bash
# Populate the foodmart schema
#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to you under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
git clone https://github.com/vlsi/calcite-test-dataset
cd calcite-test-dataset/foodmart-loader
mvn install
echo \
    -Djdbc.driver=oracle.jdbc.OracleDriver \
    -Djdbc.url=jdbc:oracle:thin:foodmart/foodmart@//localhost:1521/XE \

# End 03-populate-foodmart.sh
