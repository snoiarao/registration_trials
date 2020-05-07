# Registration Trials for THINC Lab Undergraduate research
## Sonia Rao under supervision of (Dr. Prashant Doshi)[https://github.com/pdoshi-edu]

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

##### - Multi-modal Fusion
Multimodal fusion is the process by which integration of multiple input modalities yields a more complete input environment. 
We seek to integrate both kinect streams such that future iterations of SA-Net can capture more information about objects in a given video stream. The largest challenge in integrating kinect streams is that the data streams are not associated on any same plane. That is, Kinect A's (x,y,z) depth field does not correspond to Kinect B's (x,y,z) depth field. Hence, without multi-modal fusion, the network would have no way to determine whether the kinects are seeing the same object or two different and identical objects. 
Although fusion research has grown fairly recently with the rise of deep networks, there are three commonly used techniques for multimodal fusion: early fusion, late fusion, and hybrid fusion. Early fusion is the process where multiple streams are combined into one cohesive input prior to any feature learning. Late Fusion is the process by which a network learns features of each input stream separately and independently, and later combines input stream features through matrix operations. Hybrid fusion is a combination of the two where input streams are partly combined prior to feature learning, and further refined after feature learning. 
After examining all three methods, we decided upon early fusion in the interest of modularity between input processing and network development. 

##### - New Task
THINC Lab is developing a novel LfD pipeline in which a robot will be able to perform a pick and place task. Given a conveyor belt scattered with onion of varying quality, the robot will be able to decide the quality of each onion based on visual inspection, and then sort the onions into two bins for 'Good onions' and 'Bad onions' respectively. 

![Good onion]()

![Bad onion]()

![Ambiguous onion]()

### Kinect Setup
Prior to early-fusion trials, I needed to collect two streams of kinect data with each stream adequately capturing a large amount of complex states and actions for the task at hand. Using the Robot Operating System (ROS) module for kinectv2, me and my colleague Farah collected over 50 GB of data to find the optimal kinect locations. 

Examples:
!()

!()

##### Room Challenges
Unfortunately, the workspace we were in posed several physical limitations to data gathering. Primarily, there exists a large pole at the center of the room that obstructs direct view of the conveyor belt. It is possible that the locations we chose will not be optimal for any other workspace.

##### 3DSN Considerations

##### Chosen locations

### Initial Trials
##### ICP and RANSAC
[ICP](http://ais.informatik.uni-freiburg.de/teaching/ss12/robotics/slides/17-icp.pdf)

##### Deep Methods

### 3D Smooth Net Registration
[The Perfect Match: 3D Point Cloud Matching with Smoothed Densities](http://openaccess.thecvf.com/content_CVPR_2019/papers/Gojcic_The_Perfect_Match_3D_Point_Cloud_Matching_With_Smoothed_Densities_CVPR_2019_paper.pdf)

### Generating Key Points
##### Algorithm

##### Levels

### Generating Training Data
##### Translation Matrix Refinement

##### Data Matching

### Future Work

### Contact Information
Sonia Rao
soniahrao@gmail.com

Dr. Prashant Doshi
pdoshi@uga.edu

THINC Lab:
http://thinc.cs.uga.edu/
