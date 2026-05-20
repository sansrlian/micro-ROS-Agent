string  model_name
float32 x       # in m
float32 y       # in m
float32 theta   # in rad
float32 dt      # in ms
bool    is_absolute

# Constants for model_type
string IMU_MODEL = "imu_model"
string ODOMETRY_MODEL = "odometry_model"
string EKF_MODEL = "ekf_model"