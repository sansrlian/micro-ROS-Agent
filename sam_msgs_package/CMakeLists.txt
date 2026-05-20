cmake_minimum_required(VERSION 3.12)
cmake_policy(SET CMP0146 OLD)
project(sam_msgs_package)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic -O3)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(image_transport REQUIRED)

set(messages
  "msg/NextPosition.msg"
  "msg/WheelData.msg"
  "msg/Segment.msg"
  "msg/Segments.msg"
  "msg/Float32Header.msg"
  "msg/Line.msg"
  "msg/LineSegment.msg"
  "msg/LSDandImage.msg"
  "msg/Map.msg"
  "msg/MapObject.msg"
  "msg/MapPosition.msg"
  "msg/MapSegment.msg"
  "msg/ObjectDetectionEvent.msg"
  "msg/ObjectTypes.msg"
  "msg/VescState.msg"
  "msg/Parking.msg"
  "msg/LanePoints.msg"
  "msg/LanePoint.msg"
  "msg/RcData.msg"
  "msg/PoseEstimation.msg"
  "msg/PoseEstimationModel.msg"
  "msg/CenterPointDetectionSettings.msg"
  "msg/OvertakingContext.msg"
  "msg/OvertakingSanityChecks.msg"
  "msg/PointArray.msg"
  "msg/PIDInfo.msg"
  "msg/SystemState.msg"
)

set(services
  "srv/GetMap.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${messages}
  ${services}
  DEPENDENCIES builtin_interfaces rcl_interfaces std_msgs sensor_msgs
)
ament_export_dependencies(rosidl_default_runtime std_msgs sensor_msgs rosidl_default_generators builtin_interfaces)

ament_package()
