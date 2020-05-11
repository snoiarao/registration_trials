#
#
# NOW PART OF VISUALIZE.PY
#
# DONT USE THIS FILE JUST USE THE UTILITY IN VISUALIZE!
#
#

import open3d as o3d
import argparse
import os

def load_args():
    """
    load cli arguments 

    """
    parser = argparse.ArgumentParser()
    parser.add_argument('--f',type=str,nargs='+',help="file names")
    args = parser.parse_args()
    return args

def draw_cropped_region(k1,k2):
    '''
    k1: str
         filename of first point cloud
    k2: str
         file name of second point cloud

    -function will generate a new ply file (binary or ascii depending on input clouds) from the region in common between two input clouds
    '''
    
    print("############ visualizing k1 ############")
    o3d.visualization.draw_geometries([k1])

    print("############ visualizing k2 ############")
    o3d.visualization.draw_geometries([k2])
    
    print("############ visualizing together ############")
    o3d.visualization.draw_geometries([k1 + k2])
    
    print("############ crop common region for k1 ############")
    o3d.visualization.draw_geometries_with_editing([k1])
    
    print("############ crop common region for k2 ############")
    o3d.visualization.draw_geometries_with_editing([k2])

def main():
    args = load_args()
    k1 = args.f[0]
    k2 = args.f[1]

    k1 = o3d.read_point_cloud(k1)
    k2 = o3d.read_point_cloud(k2)
    draw_cropped_regions(k1,k2)


    
