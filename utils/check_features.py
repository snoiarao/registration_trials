import numpy as np
import open3d as o3d
import os
import argparse
from visualize import *
from transform import *

def load_args():
    """
    loads cli arguments for driver

    """
    parser = argparse.ArgumentParser()
    parser.add_argument('--f',nargs='+',type=str,help="CORE file name")
    parser.add_argument('--k',nargs='+',type=str,help="ind file name")
    parser.add_argument('--t',nargs='+',type=str,help="matrix")
    parser.add_argument('--og',nargs='+',type=str,help="path to og file")
    args = parser.parse_args()
    return args

def vertsort():
    """
    for testing order of feature matching

    """
    args = load_args()
    int_cl = []
    verts = []
    for i in range(len(args.f)):
        fragment = o3d.io.read_point_cloud(args.f[i])
        index = args.k[i]
        cloud = o3d.io.read_point_cloud(args.og[i])
        core_cl, vert = visualize_interest_pts(cloud,index)
        verts.append(vert)
#        int_cl.append(visualize_interest_pts(cloud,index)[0])
#        visualize_multiple([cloud,visualize_interest_pts(cloud,index)])
    for vert in verts:
        vert_sort = vert[vert[:,1].argsort()]
        
def main():
    args = load_args()

    index = np.sort(np.genfromtxt(args.k[0]))
    print(index.shape)
    print(index[:50]) # idk if this will be optimal

    pcd, verts = visualize_int_points(o3d.io.read_point_cloud(args.og[0]),index) #SORTED BY Y
    print(verts[:50])
    visualize_points(verts[:50])
        
#    o3d.visualization.draw_geometries([pcd])
main()
