#!/bin/bash

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
