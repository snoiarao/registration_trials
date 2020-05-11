import tensorflow as tf
import copy
import numpy as np
import os
import subprocess
from open3d import *
import argparse
from glob import glob 


def draw_registration_result(source, target, transformation):
    source_temp = copy.deepcopy(source)
    target_temp = copy.deepcopy(target)
    source_temp.transform(transformation)
    return source_temp

def execute_global_registration(
        source_down, target_down, reference_desc, target_desc, distance_threshold):

    result = registration_ransac_based_on_feature_matching(
            source_down, target_down, reference_desc, target_desc,
            distance_threshold,
            TransformationEstimationPointToPoint(False), 4,
            [CorrespondenceCheckerBasedOnEdgeLength(0.9),
            CorrespondenceCheckerBasedOnDistance(distance_threshold)],
            RANSACConvergenceCriteria(2100000000, 10000))
    return result

sets = '../data/train/complete_test_sets/'
num = '74'
fpath = sets + num + '/'

source_desc_name = glob(fpath+'X*.npz')[0]
print(source_desc_name)
reference_desc = np.load(source_desc_name)
reference_desc = reference_desc['data']

test_desc_name = glob(fpath+'Y*.npz')[0]
test_desc = np.load(test_desc_name)
test_desc = test_desc['data']

# Save as open3d feature 
ref = open3d.registration.Feature()
ref.data = reference_desc.T

test = open3d.registration.Feature()
test.data = test_desc.T

# Load point cloud and extract the keypoints
reference_pc = read_point_cloud(glob(fpath+'X*.ply')[0])
test_pc = read_point_cloud(glob(fpath+'Y*.ply')[0])

indices_ref = np.genfromtxt(glob(fpath+'X*.txt')[0])
indices_test = np.genfromtxt(glob(fpath+'Y*.txt')[0])

reference_pc_keypoints = np.asarray(reference_pc.points)[indices_ref.astype(int),:]
test_pc_keypoints = np.asarray(test_pc.points)[indices_test.astype(int),:]


# Save ad open3d point clouds
ref_key = PointCloud()
ref_key.points = Vector3dVector(reference_pc_keypoints)

test_key = PointCloud()
test_key.points = Vector3dVector(test_pc_keypoints)

result_ransac = execute_global_registration(ref_key, test_key,
                                            ref, test, 0.05)


# First plot the original state of the point clouds
draw_registration_result(reference_pc, test_pc, np.identity(4))


# Plot point clouds after registration
print(result_ransac)
print(result_ransac.transformation)
outpath = sets+"results/result_"+num
np.save(outpath+".npy",result_ransac.transformation)
res = draw_registration_result(reference_pc, test_pc, result_ransac.transformation)
print(outpath)
open3d.io.write_point_cloud(outpath+".ply",res)

