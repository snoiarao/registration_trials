import open3d as o3d
import numpy as np
import argparse
import copy
from glob import glob

def draw_before(source,dest):
    """
    source: cloud from perspective 0 
    dest: cloud from perspective 1

    displays interactive 3d representation before transformation matrix applied from perspective 0 to 1

    """
    print("============ DRAWING K1 BEFORE TRANS ===========")
    o3d.visualization.draw_geometries([source])
    print("============ DRAWING K2 BEFORE TRANS ===========")
    o3d.visualization.draw_geometries([dest])
    print("============ DRAWING BOTH BEFORE TRANS ===========")
    o3d.visualization.draw_geometries([source,dest])

def draw_transform(source,dest,mat_file):
    """
    source: cloud from perspective 0 
    dest: cloud from perspective 1
    mat_file: pathname to .npy matrix file

    displays interactive 3d representation after transformation matrix applied from perspective 0 to 1

    """
    trans_mat = np.load(mat_file)

    # copy before transformation for source integrity
    source_copy = copy.deepcopy(source)
    dest_copy = copy.deepcopy(dest)
    source_copy.transform(trans_mat)
    
    print("============ DRAWING AFTER TRANS ===========")
    o3d.visualization.draw_geometries([source_copy,dest_copy])
    print("Combined clouds: ",source_copy+dest_copy)

def transform_dir(source,dest,mat_dir,draw):
    """
    source: cloud from perspective 0 
    dest: cloud from perspective 1
    mat_dir: pathname of directory that stores multiple matrices to be tested, helpful for evaluation large number of trials
    draw: integer flag from initial arguments to signal whether to draw pre-transformed clouds
    
    displays interactive 3d representation after transformation matrix applied from perspective 0 to 1

    """

    for mat in glob(mat_dir + "*" + ".npy"):
        trans_mat = mat_dir + mat
        if draw:
            draw_before(source,dest)
        draw_transform(source,dest,trans_mat)
        
def load_args():
    """
    separate function for loading arguments so that above functions can be used in other utilities 

    """
    
    # parse args
    parser = argparse.ArgumentParser()
    parser.add_argument('--md',type=str,nargs='*',help="matrix dir")
    parser.add_argument('--mf',type=str,nargs='*',help="matrix file")
    parser.add_argument('--f',type=str,nargs=2,help="file names")
    parser.add_argument('--d',type=int,nargs=1,help="draw flag 0/1",default="1")    
    args = parser.parse_args()
    return args

def main():
    args = load_args()

    # load clouds
    cl0 = o3d.io.read_point_cloud(args.f[0])
    cl1 = o3d.io.read_point_cloud(args.f[1])

    # check conditions and execute tansforms
    if args.md:
        transform_dir(cl0,cl1,args.md[0],args.d)

    if args.mf:
        if draw:
            draw_before(cl0,cl1)
        draw_transform(cl0,cl1,args.mf[0],args.d)

