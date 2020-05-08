# open3d utility functions
### specifically for dual-perspective kinect streams in 6D PointCloud format, developed for internal lab use as preprocessing for real-time 3d registration

#### requirements:
- open3d==0.8.0
- python==3.6.8
- glob3==0.0.1
- numpy==1.14.5
- pillow==5.4.1
- argparse==1.4.0

#### visualize.py
- view one or many point clouds, interest points, cropped polygons or box selected regions 

#### transform.py
- view one matrix or many transformation matrices applied on two point cloud streams for visual analysis of results

#### generate_key.py
- generates core key points, variable nearest neighbor keypoints for late registration and transformation

#### downsample.py
- save downsampled clouds for computational efficiency, we did not end up using

#### jpg_to_npy.py
- converts one or many files to numpy array and saves

#### jpgs_to_vid.py
- converts one of many directories with jpg, jpeg, or png images into .avi video and saves

#### crop_inliers.py

#### demo.py

#### draw_common.py

#### crop_inliers.py

#### gen_bash.py

#### generate_key.py

#### testing_pipeline.py

#### test_params.sh

#### transform.py

#### TODO:
- match_points.py
