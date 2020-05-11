# Sample data folder

## contents

### vids
- sample videos of streams used for experimentation
- k1 = Kinect X, k2 = Kinect Y

### ply_files
- contains polygon format point clouds corresponding to original data, manually selected core points, and a variety of nearest neighbor point clouds
- core = core points used to generate nearest neighbors
- integer after ROS timestamp = number of NN

### keypoints
- index files used for for testing and obtaining rough translation matrices. Used to generate neighborhood ply files in ply_files/

### results
- translation matrices in numpy format