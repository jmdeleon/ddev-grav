#!/bin/bash
mkdir grav
cd grav
git clone -b master https://github.com/getgrav/grav.git .
ddev config --omit-containers=db
ddev start
ddev composer install
ddev exec grav install
ddev exec gpm install admin -y
ddev launch