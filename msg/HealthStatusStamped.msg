# Message to provide information concerning the status of health of the ZED Camera

# Standard Header
std_msgs/Header header

# ZED Camera serial number
uint32 serial_number

# ZED Camera name
string camera_name

# Image quality is degraded
bool low_image_quality

# Environmental light conditions are not optimal
bool low_lighting

# Depth reliability is low
bool low_depth_reliability

# Motion sensors reliability is low
bool low_motion_sensors_reliability

# This indicates the image may be duplicated, so not a new one even if the timestamp say so. (Camera frozen?)
bool duplicated_image

# Scene Illuminance (units 0.1 lux)
int32 scene_illuminance

