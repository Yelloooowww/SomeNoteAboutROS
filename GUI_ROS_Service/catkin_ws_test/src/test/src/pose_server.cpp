#include <ros/ros.h>
#include <vector>
#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/Image.h>
#include <geometry_msgs/Pose.h>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/highgui/highgui.hpp>

#include "subt_msgs/bb_input.h"
#include "subt_msgs/BoundingBoxes.h"
#include "subt_msgs/ArtifactPoseArray.h"
#include "subt_msgs/ArtifactPose.h"

using namespace ros;
using namespace std;
using namespace cv;

class pub_arti_pose_ssd{
  public:
    pub_arti_pose_ssd(){
    	NodeHandle nh;
    	sensor_msgs::CameraInfo::ConstPtr msg = ros::topic::waitForMessage<sensor_msgs::CameraInfo>("camera_middle/color/camera_info", ros::Duration());
    	fx = msg->P[0];
    	fy = msg->P[5];
    	cx = msg->P[2];
    	cy = msg->P[6];

    	pub_pose = nh.advertise<subt_msgs::ArtifactPoseArray>("artifact_pose", 10);
    	ssd_result = nh.subscribe<subt_msgs::BoundingBoxes>("BoundingBoxes", 1, &pub_arti_pose_ssd::callback, this);
    }


    void callback(const subt_msgs::BoundingBoxes msg){
    	cv_bridge::CvImagePtr img_ptr_depth = cv_bridge::toCvCopy(msg.depth, sensor_msgs::image_encodings::TYPE_16UC1);

    	subt_msgs::ArtifactPoseArray arti_pose_arr = subt_msgs::ArtifactPoseArray();
    	arti_pose_arr.header = msg.header;
    	arti_pose_arr.count = msg.count;
    	arti_pose_arr.camera = msg.camera;
    	cout << "Total artifact: " << msg.count << endl;
    	cout << "Camera Side: " << msg.camera << endl;
    	for (int i = 0; i < msg.count; i++)
    	{
    		float z;
    		subt_msgs::ArtifactPose arti_pose = subt_msgs::ArtifactPose();
    		geometry_msgs::Pose pose;
    		cout << "Class: " << msg.bounding_boxes[i].Class << endl;
    		cout << "prob: " << msg.bounding_boxes[i].probability << endl;
    		cout << "xmin: " << msg.bounding_boxes[i].xmin << endl;
    		cout << "ymin: " << msg.bounding_boxes[i].ymin << endl;
    		cout << "xmax: " << msg.bounding_boxes[i].xmax << endl;
    		cout << "ymax: " << msg.bounding_boxes[i].ymax << endl;
    		arti_pose.Class = msg.bounding_boxes[i].Class;
    		arti_pose.probability = msg.bounding_boxes[i].probability;

    		float *y = new float((msg.bounding_boxes[i].xmin + msg.bounding_boxes[i].xmax) / 2.);
    		float *x = new float((msg.bounding_boxes[i].ymin + msg.bounding_boxes[i].ymax) / 2.);
    		if (0 <= *x && *x < 480 && 0 <= *y && *y < 640)
    			z = float(img_ptr_depth->image.at<unsigned short int>(*x, *y)) / 1000.;
    		else
    			z = 0;
    		getXYZ(y, x, z);
    		cout << "x: " << z << " y: " << -*y << " z: " << -*x << endl;
    		pose.position.x = z;
    		pose.position.y = -*y;
    		pose.position.z = -*x;
    		arti_pose.pose = pose;

    		free(x);
    		free(y);
    		arti_pose_arr.pose_array.push_back(arti_pose);
    	}

    	pub_pose.publish(arti_pose_arr);
    	return;
    }
    void getXYZ(float* , float* ,float )getXYZ(float *a, float *b, float zc){
    	float inv_fx = 1.0 / fx;
    	float inv_fy = 1.0 / fy;
    	*a = (*a - cx) * zc * inv_fx;
    	*b = (*b - cy) * zc * inv_fy;
    	return;
    }


  private:
    Publisher pub_pose;
    ros::Subscriber ssd_result;
    float fx;
    float fy;
    float cx;
    float cy;
};







int main(int argc, char **argv)
{
	init(argc, argv, "pub_arti_pose_ssd");
	pub_arti_pose_ssd pub_arti_pose_ssd;
	spin();
	return 0;
}
