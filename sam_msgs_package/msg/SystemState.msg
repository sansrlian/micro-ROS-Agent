# This message combines states about the vehicles driving capabilities and
# is meant for debugging and healthcheck purposes.

# Constants

# Odometry States
uint8 ODOMETRY_STATUS_ERROR=0
uint8 ODOMETRY_STATUS_OK=1

# Flight Controller States
uint8 FC_STATUS_ERROR=0
uint8 FC_STATUS_OK=1

# LIDAR States
uint8 LIDAR_STATUS_ERROR=0
uint8 LIDAR_STATUS_OK=1

# Rangefinder States
uint8 RANGEFINDER_STATUS_ERROR=0
uint8 RANGEFINDER_STATUS_OK=1

# pylon image states
uint8 PYLON_IMAGE_STATUS_ERROR=0
uint8 PYLON_IMAGE_STATUS_OK=1

# arming states
uint8 ARMING_STATE_DISARMED=0
uint8 ARMING_STATE_ARMED=1

# Drive Modes
string DRIVE_MODE_MANUAL="manual"
string DRIVE_MODE_SEMI_AUTONOMOUS="semi-autonomous"
string DRIVE_MODE_AUTONOMOUS="autonomous"
string DRIVE_MODE_UNKNOWN="unknown"

std_msgs/Header header

uint8 odometry_state

# whether there is a connection with the fc and the fc is ready to function
uint8 fc_state

# whether the lidar sends data
uint8 lidar_state

# whether the rangefinders are sending data (us, ToF, ...)
uint8 rangefinder_state

# whether the pylon image is being received correctly
uint8 pylon_image_state

# mode the flight controller is in
string fc_mode

# whether the motor actuator (flight controller) is armed
uint8 armed

# the drive_mode the software is in right now
string drive_mode

float32 battery_voltage