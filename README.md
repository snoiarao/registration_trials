# Registration Trials for [THINC Lab](http://thinc.cs.uga.edu/) Undergraduate research
## Sonia Rao under supervision of [Dr. Prashant Doshi](https://github.com/pdoshi-edu)

### Directory Structure
##### - utils
relevant 3d point cloud utility scripts that aided this project
##### - 3DSN
code from 3D Smooth Net and scripts
##### - Sample Data
2 sets of matching binary 6D point cloud data with varied # keypoints and 3dSN features.

### Motivation
##### - Previous Work
[SA-Net: Deep Neural Network for Robot Trajectory Recognition from RGB-D Streams](https://arxiv.org/abs/1905.04380)

State-Action (SA) detection is a vital step for Learning from Demonstration (LfD), the concept by which a robot is able to mimic a human learner without explicit programming. LfD consists of an initial network trained to recognize all states or actions of any relevant features located within a video, known as SA detection. Another network is created to draw insight about which states and actions correspond, and in which order. The composite process yields a network that is able to recognize behavior patterns which can then be transferred to a robotic agent. In a 2019 study, Sloan et al. developed a novel SA detection network as the first step to a larger LfD pipeline. This network is dubbed SA-Net, and is able to recognize simple SA pairs in a mapped grid environment. Although this model performed with high accuracy, situations with increased SA complexity and a greater number of input modalities poses a novel challenge for SA-Net. In late 2019, the project expanded to include 2 input streams instead of 1. Each stream is captured with a Kinectv2 which is a household RGBD camera originally developed by Microsoft for kinetic video gaming. This work explores different ways to combine these modalities as a pre-cursor to further SA-Net development. 

Initial SA-Net environments:

<img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/sa0.png" width="80%" height="80%" align="middle">


##### - Multi-modal Fusion
Multimodal fusion is the process by which integration of multiple input modalities yields a more complete input environment. 
We seek to integrate both kinect streams such that future iterations of SA-Net can capture more information about objects in a given video stream. The largest challenge in integrating kinect streams is that the data streams are not associated on any same plane. That is, Kinect A's (x,y,z) depth field does not correspond to Kinect B's (x,y,z) depth field. Hence, without multi-modal fusion, the network would have no way to determine whether the kinects are seeing the same object or two different and identical objects. 
Although fusion research has grown fairly recently with the rise of deep networks, there are three commonly used techniques for multimodal fusion: early fusion, late fusion, and hybrid fusion. Early fusion is the process where multiple streams are combined into one cohesive input prior to any feature learning. Late Fusion is the process by which a network learns features of each input stream separately and independently, and later combines input stream features through matrix operations. Hybrid fusion is a combination of the two where input streams are partly combined prior to feature learning, and further refined after feature learning. 
After examining all three methods, we decided upon early fusion in the interest of modularity between input processing and network development. 

Below is an example of multi-stream fusion. Although each segment represents a different viewpoint, each viewpoint can be combined to contain a more complete view of the scene. 

<img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/asc_0.png" width="50%" height="50%">
<img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/asc_1.png" width="30%" height="30%">

##### - New Task
THINC Lab is developing a novel LfD pipeline in which a robot will be able to perform a pick and place task. Given a conveyor belt scattered with onion of varying quality, the robot will be able to decide the quality of each onion based on visual inspection, and then sort the onions into two bins for 'Good onions' and 'Bad onions' respectively. 

<img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/goodo.jpg" width="20%" height="20%"> <img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/bado.jpg" width="20%" height="20%">
<img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/ambiguouso.jpg" width="50%" height="50%">

### Kinect Setup
Prior to early-fusion trials, I needed to collect two streams of kinect data with each stream adequately capturing a large amount of complex states and actions for the task at hand. Using the Robot Operating System (ROS) module for kinectv2, me and my colleague Farah collected over 50 GB of data to find the optimal kinect locations. 

Examples of data collected:

<img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/kin0.png" width="50%" height="50%"> <img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/kin1.png" width="50%" height="50%">

The data were in .bag file format as per ROS requirements. Each bag file contained frames taken at 33 frames per second which is the hardware maximum. Each frame is in point_cloud format and has an RGB image component and an XYZ depth component. We initially had issues synchronizing the depth and image components for each frame; the kinects would record different amounts of data from each other, and would also record different quantities of image and depth components. To mitigate this issue, we made sure to start recording each stream from different computers, as a single computer did not have the bandwidth to record consistently across both streams. Secondly, we ensured that the frame rate was at its maximum so that the number of images and number of depth frames recorded were close to similar with minimal lag. Because less depth data ends up being recording, due to hardware and operating system limitations, we limit our dataset to depth frames and their corresponding image frames, and disregard all image frames that do not have a depth frame counterpart. As a rough approximation, a 1 minute RGB-D video recorded on both streams would yield about 20-30 image-depth pairs on EACH kinect that were adequately time and scene synchronized. 

I remain unsure whether the synchronization process would be more seamless with different hardware, but we worked with roughly time-space-kinect synchronized data for the project duration. 

##### task and room considerations
To capture critical states, actions, and objects, our data collection must abide by the following:
- all onions on the conveyor belt must be visible by one, both, or a combination of the two streams
- the quality of all onions on the conveyor belt must be determinable by one, both, or a combination of the two streams
- all ranges of the expert's hand must be visible by both streams
- one stream must capture the expert's viewpoint when examining individual onions (hand raised to face)
- the bins or bin region must be visible by one, both, or a combination of the two streams

To address the onion on the conveyor, we place one kinect anywhere between directly in front of the observer to 90 degrees either direction. To address the expert's viewpoint, we place the second camera at varying heights above the expert's left or right shoulder. Below is an example of the shoulder camera's perspective with the image and depth frames overlaid; the camera can see much of the conveyor belt and can also detect possible blemishes when the expert investigates an individual onion closer to their face. 

<img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/exp0.png" width="50%" height="50%">

close-up of blemish:

<img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/exp1.png">

Unfortunately, the workspace we were in posed several physical limitations to data gathering. Primarily, there exists a large pole at the center of the room that obstructs direct view of the conveyor belt. You can see the white space in the above examples is part of the pole, and is highly obstructive. It is possible that the locations we chose will not be optimal for other workspaces. 

### Initial Trials
##### ICP and RANSAC
[ICP](http://ais.informatik.uni-freiburg.de/teaching/ss12/robotics/slides/17-icp.pdf)

##### Deep Methods
Because ICP and RANSAC did not produce very satisfactory results, we moved onto exploring novel deep learning methods. The advantage of deep learning based methods over traditional methods is that, usually, deep networks are able to leverage high dimensional features which can then be used for matching. There are several existing deep networks that convert RGB-D data into high dimensional features which can then be used with matching algorithms such as RANSAC. The primary obstacle to using these methods is that our data is not only unmatched, but both streams are on different coordinate planes. Thus, we need a deep learning algorithm that is able to firstly convert RGB-D data into high-dimensional features, and secondly register those features on the same coordinate system. From there, we can use those features as inputs to RANSAC for a more cohesive early-fused input to the revised SA-Net. 

### 3D Smooth Net Registration
[The Perfect Match: 3D Point Cloud Matching with Smoothed Densities](http://openaccess.thecvf.com/content_CVPR_2019/papers/Gojcic_The_Perfect_Match_3D_Point_Cloud_Matching_With_Smoothed_Densities_CVPR_2019_paper.pdf)
In late 2019, I came across this paper by researchers at ETH Zurich who were working on a similar issue: tackling data registration and RGB-D feature learning simultaneously. Check out the 2019 CVPR paper in the above link for details on their novel method known as 3dSmoothNet. For the remainder of the project, my registration trials revolved around adapting and optimizing 3DSmoothNet for our data.

Due to limited access to a GPU server, I set up 3DSmoothNet on a Google Cloud Platform compute engine instance with Nvidia P100 GPU and 4 CPU cores. Every new user gets a large amount of free GPU credits which was sufficient for the project until I gained access to a regular GPU server. If you don't have GPU access, I recommend [GCP](https://cloud.google.com/compute/docs/gpus). 

The general idea of 3DSmoothNet is that

<img src="https://raw.githubusercontent.com/zgojcic/3DSmoothNet/master/figures/Network.jpg">


Our process to use 3dSN pre-trained model:
1. Collect two streams of RGB-D data that contain varying levels of commonality (anywhere from 20%-80%)
2. Unpack .bag files using ROS
3. Extract time-synchronized data between the two streams (at least 1 pair)
4. Convert point cloud entities into binary point-clouds (default is ASCII)
5. Generate Index files of Key points (see below section)
6. Parametrize using 3dSN SDV 
7. Perform inference via 3dSN pre-trained model
8. Match using RANSAC on high-dim features
9. Obtain translation matrix

Our process to train on top of their pre-trained model:
1. Collect and process data (same as above)
2. Extract at least 30 pairs of time-synchronized pairs across a wide variety of expert motion
3. Manually select key points (see below)
4. Generate index files with keypoints and nearest neighbors
5. Parametrize keypoints using 3DSN SDV
6. Create mapping of keypoints using rough translation matrix
7. Convert mapped parametrized inputs into .tfrecord format
8. Train on top of 3dSN weights
9. Match using RANSAC on inferred high-dim features
10. Obtain refined translation matrix

We will go into more detail below and in utils.

### Generating Key Points and Index Files
##### Random from Common
manually selected common region using open3d. generated varying levels of random points from common region in either

##### Manual Selection
- algorithm:
  user picks any number of points in each cloud that definitely correspond. rolling ball selects n nearest neighbors and adds index to keypoint list. parametrized
  
  <img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/kp0.png"  width="50%" height="50%">
  <img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/kp1.png" width="50%" height="50%">

- levels
anywhere from 20 keypoints to 15,000.
- tradeoffs: 

### Generating Training Data
##### Translation Matrix Refinement

##### Data Matching

### Results

### Future Work

### Contact Information
Sonia Rao
soniahrao@gmail.com

Dr. Prashant Doshi
pdoshi@uga.edu

THINC Lab:
http://thinc.cs.uga.edu/
