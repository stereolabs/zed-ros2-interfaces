# CONSTANTS
uint8 OK = 0
uint8 UNAVAILABLE = 1
uint8 INSUFFICIENT_FEATURES = 2
uint8 LOOP_CLOSED = 1
uint8 SEARCHING = 2
uint8 OFF = 3
uint8 INITIALIZING = 4
uint8 KNOWN_MAP = 5
uint8 MAP_UPDATE = 6
uint8 LOST = 7
uint8 NOT_ENOUGH_MEMORY_FOR_TRACKING = 8

# ODOMETRY_STATUS
# Represents the current state of Visual-Inertial Odometry (VIO) tracking between the previous frame and the current frame.
# OK  - The positional tracking module successfully tracked from the previous frame to the current frame.
# UNAVAILABLE - The positional tracking module cannot track the current frame.
# INSUFFICIENT_FEATURES - The positional tracking failed to track the current frame because it could not find enought features.
uint8 odometry_status

# SPATIAL_MEMORY_STATUS
# Represents the current state of camera tracking in the global map.
# OK - Deprecated: This state is no longer in use for GEN_3.
# LOOP_CLOSED - Displayed whenever the system has found a loop closure, relocalized within the area map or corrected after a sudden localization loss.
# SEARCHING - Deprecated: This state is no longer in use for GEN_3.
# OFF - Displayed when the spatial memory is turned off.
# INITIALIZING - Displayed until the cameras has acquired enough memory (Initial Area Mapping) or has found its first loop closure and is localized in the loaded area map (Lifelong Mapping/Localization). Users need to keep moving the camera for it to get updated.
# KNOWN_MAP - Displayed when the camera is localized within the loaded area map.
# MAP_UPDATE - Displayed when the robot is mapping (Initial Area Mapping) or when the robot is getting out of the area map bounds (Lifelong Mapping). Displayed as “Tracking” when in exploratory mode with SLAM engaged.
# LOST - Displayed when localization cannot operate anymore (camera completely obstructed, sudden localization jumps after being localized) in Mapping/ Localization modes. It can also include the case where the camera jumps or is located out of map bounds in Localization mode. This should be an indicator for users to stop the robot.
# NOT_ENOUGH_MEMORY_FOR_TRACKING - Displayed when there is not enough memory to continue tracking.
uint8 spatial_memory_status

# Deprecated
uint8 status
