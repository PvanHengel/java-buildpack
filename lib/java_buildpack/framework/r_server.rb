# Encoding: utf-8
# Cloud Foundry Java Buildpack
# Copyright 2013-2016 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'java_buildpack/component/base_component'
require 'java_buildpack/framework'

module JavaBuildpack
  module Framework

    # Encapsulates the functionality for contributing Java debug options to an application.
    class RServer < JavaBuildpack::Component::BaseComponent

      # (see JavaBuildpack::Component::BaseComponent#detect)
      def detect
        true
      end

      # (see JavaBuildpack::Component::BaseComponent#compile)
      def compile

        #puts("TEST0: " + ARGV[0])

        #puts("TEST1: " + ARGV[1])

        #system 'wget http://cran.r-project.org/src/base/R-3/R-3.3.1.tar.gz'

        #system 'wget -nv http://cran.r-project.org/bin/linux/ubuntu/trusty/r-base-core_3.3.0-2trusty0_i386.deb'

        system 'mkdir '+ARGV[0]+'/vendor'

        Dir.chdir ARGV[0]+'/vendor'
        system 'wget http://nvdrinfa1.ny.ofi.com/data/SrcFiles/RISK_ODS/data/pvh/OFIRSERVE.tar.gz'
        system 'tar xvf OFIRSERVE.tar.gz'




      end

      # (see JavaBuildpack::Component::BaseComponent#release)
      def release
      #  STDOUT.write 'PvH was here - release'
      end


    end

  end
end
