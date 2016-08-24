#
# Cookbook Name:: describeit
# Recipe:: default
#
# Copyright 2015, Describeit, Inc
#
# All rights reserved - Do Not Redistribute
#
# update package database
execute "apt-get update"

# install default packages
package "telnet"
package "postfix"
package "curl"
package "git-core"
package "zlib1g-dev"
package "libssl-dev"
package "libreadline-dev"
package "libyaml-dev"
package "libsqlite3-dev"
package "sqlite3"
package "libxml2-dev"
package "libxslt1-dev"
package "libpq-dev"
package "build-essential"
package "tree"

# install project packages
package "mysql-client"
package "libmysqlclient-dev"
package "monit"
package "openssl"
package "ghostscript"
package "libgs-dev"
package "gs-esp"
package "imagemagick"

# set timezone
bash "set timezone" do
  code <<-EOH
    echo 'US/Eastern' > /etc/timezone
    dpkg-reconfigure -f noninteractive tzdata
  EOH
  not_if "date | grep -q 'EDT\|EST'"
end