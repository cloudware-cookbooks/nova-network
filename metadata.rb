maintainer        "KT Cloudware, Inc."
description       "Wrapper cookbook for RCB's quantum cookbook"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.20"
recipe            "nova-controller", "Wrapper recipe which includes quantum::server recipe"

%w{ centos ubuntu }.each do |os|
  supports os
end

%w{ ktc-quantum }.each do |dep|
          depends dep
end
