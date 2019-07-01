#!/bin/bash
# @file install-dependencies.sh
# @project BashScripts
#
# @author Andrés Ferreiro González (andres.ferreiro.glez@gmail.com)
# @company --
#
# Created: Friday, 28th September 2018 5:53:21 pm
# Last Modified: Friday, 28th September 2018 6:12:24 pm
# Modified By: Andrés Ferreiro González (andres.ferreiro.glez@gmail.com)
#
# Copyright (c) 2018 Andrés Ferreiro González

packages=("sqlite3" "libsqlite3-dev" "libsqlite3-0")
for package in ${packages[@]};
do
echo "Searching package $package..."
dpkg -s $package &> /dev/null

if [ $? -eq 0 ]; then
echo "Package already installed"
else
echo "Package is NOT installed"
echo "Installing..."
apt-get install $package
fi
done

echo "Done!"
