#!/bin/bash
mkdir grav
cd grav
ddev config --omit-containers=db
ddev start
ddev composer create getgrav/grav
ddev exec gpm install admin -y
ddev launch