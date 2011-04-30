maintainer       "Noan Kantrowitz"
maintainer_email "nkantrowitz@crypticstudios.com"
license          "Apache 2.0"
description      "Install and configure the collectd monitoring daemon"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "1.0.0"

%w{debian ubuntu}.each do |os|
  supports os
end
