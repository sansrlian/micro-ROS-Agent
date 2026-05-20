# Successor of the clothoid message
string      uuid
uint8       origin # Enum representing the origin 
float32     curvature
float32     length
float32     target_speed
bool        clear_queue False # Optional field to clear the queue in the trajectory follower. Needed to use the original LaneFollower functionality.
