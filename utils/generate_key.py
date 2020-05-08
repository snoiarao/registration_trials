import open3d as o3d
import numpy as np
import argparse
import os

def load_args():
    """
    loads cli args

    """
    parser = argparse.ArgumentParser()
    parser.add_argument('--f',type=str,nargs='*',help="file names")
    parser.add_argument('--d',type=str,nargs='*',help="dir name")
    args = parser.parse_args()
    return args

def pick_points(pcd,fname):
    """
    pcd: pre-loaded open3d point cloud entity
    fname: file name without extension to save core points for easy visualization and retrieval

    allows user to pick points for keypoint matching in interactive environment

    """
    print("Please pick at least three correspondences using [shift + left click]")
    print("Press [shift + right click] to undo point picking")
    print("press q to close the window")
    vis = o3d.visualization.VisualizerWithEditing()
    vis.create_window()
    vis.add_geometry(pcd)
    vis.run() 
    vis.destroy_window()
    
    point_cloud = o3d.geometry.PointCloud()
    verts = np.asarray(pcd.points)[vis.get_picked_points()]
    point_cloud.points = o3d.utility.Vector3dVector(verts)
    print("point_cloud",point_cloud)
    cname = fname[:-4] + str(len(vis.get_picked_points())) + "_core.ply"
    o3d.io.write_point_cloud(cname,point_cloud)
    return vis.get_picked_points()

def calc_nns(k,pts):
    """
    k: number of nearest neighbors to compute for each core point
    pts: core points selected in pick_points()
    interest: nearest neighbors of core points

    computes NN neighborhood to increase # of keypoints for registration experiments

    """
    for j in nn:
        tree = o3d.geometry.KDTreeFlann(k)
        interest = []
        for i in range(len(pts)):
            [k_1, idx_1, _] = tree.search_knn_vector_3d(k.points[pts[i]], j)
            print(k_1)
            interest.append(idx_1)
        interest = np.hstack(np.asarray(interest))
        unique = np.unique(interest)
        print("unique pts:",len(unique))
        return interest
    
def test_nn():
    """
    driver for nearest neighbor experiment, saves varied number of keypoints as text files
        for later use within registration trials

    """
    args = load_args()
    if args.d:
        for dname in args.d:
            files = os.listdir(dname)
            for filename in files:
                fname = dname + filename
                k1 = o3d.io.read_point_cloud(fname)
                pts = pick_points(k1,fname)
                nn = [10, 50, 100, 120, 150, 200, 220, 250, 300, 400, 500, 600, 1000]
                nn_pts = calc_nns(k1,pts,fname)
                outpath = fname[:-4] + "_" + str(len(nn_pts)) + "_key.txt"
                with open(outpath, "w") as outfile:
                    np.savetxt(outfile, interest.astype(int), fmt='%i',delimiter=",")
                print("saved interest points to: ",outpath)

    else:     
        for fname in args.f:
            k1 = o3d.io.read_point_cloud(fname)
            pts = pick_points(k1,fname)
            nn = [10, 50, 100, 120, 150, 200, 220, 250, 300, 400, 500, 600, 1000]
            nn_pts = calc_nns(k1,pts,fname)
            outpath = fname[:-4] + "_" + str(len(nn_pts)) + "_key.txt"        
            with open(outpath, "w") as outfile:
                np.savetxt(outfile, interest.astype(int), fmt='%i',delimiter=",")
            print("saved interest points to: ",outpath)
    
def main():
    test_nn()

main()
