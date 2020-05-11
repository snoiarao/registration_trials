import open3d as o3d
import argparse
import os

parser = argparse.ArgumentParser()
parser.add_argument('--f',type=str,nargs='+',help="file names")
args = parser.parse_args()

for f in args.f:
        print(f)
        pcd = o3d.io.read_point_cloud(f)
        o3d.visualization.draw_geometries_with_editing([pcd])


