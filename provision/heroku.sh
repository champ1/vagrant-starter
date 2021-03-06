#!/usr/bin/env bash
echo "Installing Heroku toolbelt"
wget -qO- https://toolbelt.heroku.com/install.sh | /bin/bash
echo "Heroku toolbelt installed"

echo "Adding Heroku toolbelt to bashrc"
echo 'PATH="/usr/local/heroku/bin:$PATH"' >> /home/vagrant/.profile
echo "Heroku toolbelt added to bashrc"

echo "Installing Heroku gems"
cd /vagrant
echo "gem 'netrc',       '~> 0.7.7'"  >> Gemfile
echo "gem 'rest_client', '~> 1.7.3'"  >> Gemfile
echo "gem 'heroku-api',  '~> 0.3.18'" >> Gemfile
echo "Heroku gems installed"

