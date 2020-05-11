# Registration Trials for [THINC Lab](http://thinc.cs.uga.edu/) Undergraduate research
## Sonia Rao under supervision of [Dr. Prashant Doshi](https://github.com/pdoshi-edu)

### Directory Structure
##### - utils
relevant 3d point cloud utility scripts that aided this project
##### - 3DSN
code from 3D Smooth Net and scripts
##### - Sample Data
2 sets of matching binary 6D point cloud data with varied # keypoints and 3dSN features and results

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

The general idea of 3DSmoothNet is matching point clouds via fully convolutional layers and voxelized smoothed density value (SDV) representations. SDV grids are computed per interest point and aligned to a local reference frame (LRF) to achieve rotation invariance. This allows their approach to be sensor agnostic. The 3D point cloud descriptor achieves high accuracy on 3DMatch benchmark data set, outperforming the SOTA with only 32 output dimensions. This very low output dimension allows for near realtime correspondence. 3DSmoothNet trained only on RGB-D indoor scenes achieves 79.0% average recall on laser scans of outdoor vegetation, suggesting that 3dSN's model generalizes well to a wide variety of scenes. Because of this, I thought that 3dSN might be a good fit for our indoor workspace setting, and real-time registration preference. Ideally one pass through 3dSN will be sufficient to produce a translation matrix that would generalize to all frames in a video, but if that isn't the case, this method would be able to produce fast results per set. 

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
We first explored generating key points from common sections within points. It was unclear from the 3DSN paper what percentage of either point cloud should correspond, and as such we tried varying levels of keypoints, common regions, and data. I found that having around 80% of common regions between the point clouds yielded optimal keypoints. Our process was as such:
1. Collect data with 80% common region
2. Overlay point clouds and extract common region from each
3. Crop common region of point clouds into two new separate clouds
4. Generate N random points from each cloud
5. Feed into 3dSN 

Because in this case we are only testing using 3dSN's pre-trained model, we are able to use randomly generated keypoints without any mapping function. 3dSN coupled with RANSAC is able to infer the rough correspondances of keypoints without explicit direction. While that's convenient, this method did not perform super well due to scalability issues. 

Our individual point clouds contain over 1 million points. The cropped common region, with 80% similarity, contains anywhere from 500,000 points to 750,000 points. To randomly generate keypoints that have rough correspondences, we would need to generate a vast number of keypoints, likely over 50,000. It is impossible to parametrize and infer even a fraction of that. I tried repeating the process with downsampled clouds, but found that the results suffered. 


##### Manual Selection
Because the keypoints are no longer selected randomly, there is no need to have a vast number of keypoints or an extensive common region. However, I find that having 60% common region was still preferred for our workspace settings. Because our workspace was small, having greater than 40% different regions usually meant that our kinects were angled significantly differently. It is challenging to infer correspondences between matching points if they are visually different. 
Our process was as follows:

1. collect data with >60% common region
2. Use the point picker utility in utils to select key points, quantity of nearest neighbors
3. Repeat for second cloud
4. Turn points into index file
5. feed into 3dSN

I experimented with over 15 levels of nearest neighbors ranging from 2 to 5,000. I find that there's a computational bottleneck with using over 500 nearest neighbors. Additionally with too many keypoints, the RANSAC matching performed poorly since several of the features showed the same points. Usually 50 to 200 nearest neighbors and ~20 keypoints per cloud are sufficient for parametrization and inference. 
  
  <img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/kp0.png"  width="50%" height="50%">
  <img src="https://github.com/snoiarao/registration_trials/blob/master/imgs/kp1.png" width="50%" height="50%">


Testing results using this method were satisactory. The planes visually look very aligned, and important objects (e.g. blemished onion) that were obscured in either cloud seem to be cohesively fused. However, it was still possible for us to obtain better results by training the model using our data. 

### Generating Training Data
##### Translation Matrix Refinement
To update the 3dSN for our data, I needed to collect data and transfer it to .tfrecord format. After corresponding with the authors, I realized that to do so, I need to first generate keypoints for both clouds and second create an explicit mapping of each keypoint to its corresponding match in the other point cloud. The authors of 3dSN used the publically available [3dMatch](http://3dmatch.cs.princeton.edu/) dataset to develop their model and train their weights. This data has over 10,000 pairs of point cloud data and their corresponding ground truth. This poses a unique challenge. I do not have ground truth data, it would be impossible for us to collect ground truth data, and it would take a long time to collect, process, and generate keypoints for enough data to make a sizable difference to the pre-trained model. As such, I used a matrix refinement method to tune the pre-trained model, rather than shape it entirely to our data. 

I started by generating 20 keypoints with 120 nearest neighbors for around 15 corresponding pairs of point clouds. I fed it into 3dSN without modification and obtained a rough translation matrix. The rough matrix can essentially be used to generate mapping of one point cloud to the other. Using the original 20 keypoints with ZERO nearest neighbors, I used the keypoint matching utility to overlay the clouds on the same plane and determine matching points. I then parametrized the points using 3dSN, converted the features into tfrecord using the mapping, and fed it into 3dSN for training. 

I find that training with 20 to 50 keypoints did not significantly alter the visual results, and that using the pre-trained 32-dimensional model is generally sufficient for this task. 

### Results and Future Work
Without ground truth, it's difficult to visually determine the registration accuracy. The data folder includes a .ply file with the most recent registration trial on the same plane. Unfortunately, the onset of COVID shelter-in-place measures stopped me from collecting new data, which I assumed would be part of the project. I began training trials with about 20 pairs of matched data to explore processing techniques. I assumed that I would be able to collect and process more data for training once I had a better idea of what training and evaluation would entail. As such, I never collected more data and it is possible that training on more data would significantly improve results. 

Future work includes:
- Collecting more data showing different state-action pairs
- Using another set of data to test trained model
- Creating a driver program to automatically time-synchronize data from RGB-D video, register data into one plane, and create a new RGB-D video
- Test 3d Object detection methods on registered RGB-D set

### Contact Information
Sonia Rao
soniahrao@gmail.com

Dr. Prashant Doshi
pdoshi@uga.edu

THINC Lab:
http://thinc.cs.uga.edu/
