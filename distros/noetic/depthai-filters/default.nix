
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, opencv, roscpp, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-filters";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_filters/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "5548bf677e5bae757c24c04c4a4022bc5e63dc998ed0378f739a1ac7e780218e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-pipeline image-transport image-transport-plugins message-filters nodelet opencv roscpp sensor-msgs vision-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The depthai_filters package'';
    license = with lib.licenses; [ mit ];
  };
}