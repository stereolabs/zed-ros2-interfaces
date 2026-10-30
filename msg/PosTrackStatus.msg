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

# Confidence/quality of the pose estimation for the target frame.
# A confidence metric of the tracking [0-100] with:
#   0:   tracking is lost
#   100: tracking can be fully trusted
uint8 pose_confidence

# TRACKING_FUSION_STATUS
# Sources used to estimate the pose of the current frame (`sl::POSITIONAL_TRACKING_FUSION_STATUS`).
# MOTION_PRIOR: the images cannot be used and the pose follows the motion given as motion prior
# (e.g. wheel odometry): `odometry_status` keeps reporting why the images cannot be used.
uint8 FUSION_VISUAL_INERTIAL = 0
uint8 FUSION_VISUAL = 1
uint8 FUSION_INERTIAL = 2
uint8 FUSION_GNSS = 3
uint8 FUSION_VISUAL_INERTIAL_GNSS = 4
uint8 FUSION_VISUAL_GNSS = 5
uint8 FUSION_INERTIAL_GNSS = 6
uint8 FUSION_UNAVAILABLE = 7
uint8 FUSION_MOTION_PRIOR = 8
uint8 tracking_fusion_status

# MOTION_PRIOR_STATUS
# How the motion prior (e.g. wheel odometry) was used for the current frame (`sl::RELATIVE_POSE_FUSION_STATUS`).
# OFF - No motion prior is used.
# OK - The motion prior was used for this frame.
# MISSING - No motion prior was received for this frame: only the images were used. Occasional values are harmless.
# OUT_OF_SYNC - The motion prior did not cover the time interval of this frame. Reported on every frame, it means that the samples are not chained or that the clocks of the source and of the camera do not agree.
# REJECTED - The motion prior disagreed with the images and was discarded for this frame. Persistent values usually mean a wrong mounting transform, a wrong sign convention or an uncertainty set too low.
# DEFERRED - The motion prior for this frame had not arrived yet: it will be used once it arrives. Expected on most frames when the source is slower than the camera or its samples arrive after the images.
uint8 MOTION_PRIOR_OFF = 0
uint8 MOTION_PRIOR_OK = 1
uint8 MOTION_PRIOR_MISSING = 2
uint8 MOTION_PRIOR_OUT_OF_SYNC = 3
uint8 MOTION_PRIOR_REJECTED = 4
uint8 MOTION_PRIOR_DEFERRED = 5
uint8 motion_prior_status

# Deprecated: use `odometry_status` and `spatial_memory_status` instead.
# Global state of the positional tracking module, as returned by the ZED SDK
# `sl::POSITIONAL_TRACKING_STATE`. NOTE: the values do NOT match the constants above:
# 0 - SEARCHING (deprecated, no longer in use)
# 1 - OK: the positional tracking is functioning normally
# 2 - OFF: the positional tracking is currently disabled
# 3 - FPS_TOO_LOW: the effective FPS is too low to provide accurate motion tracking results
# 4 - SEARCHING_FLOOR_PLANE: the camera is searching for the floor plane to set the world reference frame
# 5 - UNAVAILABLE: the tracking module was unable to track from the previous frame to the current frame
uint8 status
