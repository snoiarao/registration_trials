import open3d as o3d
import os
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--d',type=str,nargs='+',help="dir names")
parser.add_argument('--f',type=str,nargs='+',help="file names")
parser.add_argument('--v',type=float,help="voxel size",default=0.009)
args = parser.parse_args()

if args.d is not None:
    files = os.listdir(args.d[0])
if args.f:
    files = args.f

for filename in files:
    print("downsampling ",filename)
    k = o3d.io.read_point_cloud(filename)
    downpcd = k.voxel_down_sample(voxel_size=args.v)
    print("downsampled: ",downpcd)
    outname = "training/down/" + filename
    print("saving to: ",outname)
    o3d.io.write_point_cloud(outname,downpcd)
