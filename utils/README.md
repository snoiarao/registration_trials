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
- allows user to crop superfluous regions. Our workspace had lots of noise, so I used this utility to remove irrelevant workspace for training and testing

#### demo.py
- initial 3DSN demo using RANSAC, modified to testing_pipeline.py

#### draw_common.py
- allows user to crop common region of two clouds for random generation of keypoints

#### gen_bash.py
- used to run experiment for hyperparameter tuning

#### generate_key.py
- used for manual selection of keypoints and nearest neighbor points, saves into .txt index file

#### testing_pipeline.py
- full testing pipeline using 3DSN and RANSAC

#### test_params.sh
- bash file to run over server to tune hyperparameters

#### transform.py
- transforms kinect X viewpoint using obtained translation matrix and displays overlays of X, X', and Y

#### ransac.py
- initial run-through of RANSAC without 3DSN learned features

#### synch_time.py
- synchronizes ROS unpacked PCD's and saves pairs into output directory 

#### TODO:
