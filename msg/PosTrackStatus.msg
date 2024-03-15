# CONSTANTS
uint8 OK = 0
uint8 NOT_OK = 1
uint8 LOOP_CLOSED = 1
uint8 SEARCHING = 2
uint8 OFF = 1
uint8 CALIBRATION_IN_PROGRESS = 2

# VISUAL_ODOMETRY_TRACKING_STATUS
# Represents the current state of Visual-Inertial Odometry (VIO) tracking between the previous frame and the current frame.
# OK  - The positional tracking module successfully tracked from the previous frame to the current frame.
# NOT_OK - The positional tracking module failed to track from the previous frame to the current frame.
uint8 visual_odometry_tracking_status

# MAP_TRACKING_STATUS
# Represents the current state of camera tracking in the global map.
# OK - The positional tracking module is operating normally.
# LOOP_CLOSED - The positional tracking module detected a loop and corrected its position.
# SEARCHING - The positional tracking module is searching for recognizable areas in the global map to relocate.
uint8 map_tracking_status

# IMU_FUSION_STATUS
# Represents the current state of IMU fusion.
# OK - The IMU fusion is calibrated and working successfully.
# OFF - The IMU fusion module is not enabled.
# CALIBRATION_IN_PROGRESS - Calibration of the visual-inertial fusion module is in progress.
uint8 imu_fusion_status

# Deprecated
uint8 status
