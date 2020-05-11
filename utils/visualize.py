import open3d as o3d
import numpy as np
import os
import argparse
import glob

def main():
    '''
    *** utilities are intended to be used within larger driver programs, main is for local function testing and debugging ***
    '''     

    args = load_args()

    # call functions

def load_args():
    """
    load cli args for main() to test and debug functions to be used in drivers

    """
    parser = argparse.ArgumentParser()
    parser.add_argument('--files',type=str,nargs='*',help="file names")
    parser.add_argument('--dir',type=str,nargs='*',help="dir name")
    parser.add_argument('--crop',type=int,nargs=1,help="crop flag",default=0)
    parser.add_argument('--int',type=int,nargs=1,help="intpoint flag",default=0)
    parser.add_argument('--mult',type=int,nargs=1,help="multiview flag",default=0)
    parser.add_argument('--down',type=int,nargs=1,help="downsample flag",default=0)
    args = parser.parse_args()
    return args
        
def draw_cloud(fname):
    """
    fname: string of file path of file to load

    displays specified 3d point cloud in interactive environment
    """
    cloud = o3d.io.read_point_cloud(fname)
    print("############ visualizing pcd " + fname + " ############")
    o3d.visualization.draw_geometries([cloud])

def draw_dir(dname):
    """
    dname: path to directory

    calls draw_cloud for each file in directory
    """
    fnames = glob.glob(args.d + "*.ply")
    for f in fnames:
        draw_cloud(dname + f)

def crop_pcd(cloud,fname):
    """
    cloud: pre-loaded open3d point cloud entity
    fname: string of file path of file to load

    displays specified 3d point cloud in interactive environment and saves
    """

    print("############ editing pcd " + fname + " ############")
    print("Press 'Y' twice to align geometry with negative direction of y-axis")
    print("Press 'K' to lock screen and to switch to selection mode")
    print("Drag for rectangle selection or use ctrl + left click for polygon selection")
    print("Press 'C' to get a selected geometry and to save it")
    print("Press 'F' to switch to freeview mode")
    o3d.visualization.draw_geometries_with_editing([pcd])

def visualize_int_file(cloud,indices):
    """
    cloud: pre-loaded open3d point cloud entity
    indices: .npy or .txt file containing indices of interest points generated from cloud

    displays interest points from specified 3d point cloud in interactive environment
    """
    point_cloud = o3d.geometry.PointCloud()
    cl_indices = np.genfromtxt(indices)
    verts = np.asarray(cloud.points)[cl_indices.astype(int),:]
    point_cloud.points = o3d.utility.Vector3dVector(verts)
    print("############ visualizing interest points ############")
    o3d.visualization.draw_geometries([point_cloud])
    return point_cloud, verts

def visualize_int_points(cloud, cl_indices):
    """
    cloud: pre-loaded open3d point cloud entity
    cl_indices: INDEX colorless 3d point list. preloaded npy format

    displays interest points from specified 3d point cloud in interactive environment
    """

    point_cloud = o3d.geometry.PointCloud()
    verts = np.asarray(cloud.points)[cl_indices.astype(int),:]
    point_cloud.points = o3d.utility.Vector3dVector(verts)
    print("############ visualizing interest points ############")
    o3d.visualization.draw_geometries([point_cloud])
    return point_cloud, verts
    
def visualize_points(verts):
    point_cloud = o3d.geometry.PointCloud()
    point_cloud.points = o3d.utility.Vector3dVector(verts)
    print("############ visualizing given points ############")
    o3d.visualization.draw_geometries([point_cloud])
    return point_cloud

    
def visualize_multiple(clouds):
    """
    clouds: list object of pre-loaded open3d point cloud entities

    displays specified 3d point clouds together in interactive environment
    """    
    print("####### visualizing multiple clouds on same plane #######")
    o3d.visualization.draw_geometries(clouds)
    
def downsample(cloud, voxel_size):
    """
    cloud: pre-loaded open3d point cloud entity
    voxel_size: decimal factor to downsample cloud by

    displays specified 3d point cloud in interactive environment after downsampling by a factor of voxel_size
    """    
    
    down_cloud = cloud.voxel_down_sample(voxel_size)
    print("downsampled cloud: ",down_cloud)
    o3d.visualization.draw_geometries([down_cloud])
