#include "ros/ros.h"
#include "roscpp_tutorials/TwoInts.h"
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
	private:
		ServiceServer cb_service;
		Publisher pub_pose;
		float fx;
		float fy;
		float cx;
		float cy;

  public:
    pub_arti_pose_ssd(NodeHandle nh){
    	// sensor_msgs::CameraInfo::ConstPtr msg = ros::topic::waitForMessage<sensor_msgs::CameraInfo>("camera_middle/color/camera_info", ros::Duration());
			sensor_msgs::CameraInfo::ConstPtr msg = ros::topic::waitForMessage<sensor_msgs::CameraInfo>("/camera/depth/camera_info", ros::Duration());
			fx = msg->P[0];
    	fy = msg->P[5];
    	cx = msg->P[2];
    	cy = msg->P[6];

    	pub_pose = nh.advertise<subt_msgs::ArtifactPoseArray>("artifact_pose", 10);
			cb_service = nh.advertiseService("HI_service", &pub_arti_pose_ssd::cb, this);

			ROS_INFO("init Done");
    }


		bool cb(roscpp_tutorials::TwoInts::Request  &req,
			      roscpp_tutorials::TwoInts::Response &res){
			ROS_WARN("request: x=%ld, y=%ld", (long int)req.a, (long int)req.b);
    	// cv_bridge::CvImagePtr img_ptr_depth = cv_bridge::toCvCopy(msg.depth, sensor_msgs::image_encodings::TYPE_16UC1);

    	subt_msgs::ArtifactPoseArray arti_pose_arr = subt_msgs::ArtifactPoseArray();
			arti_pose_arr.header.frame_id= "camera_middle_link";
  		float z;
  		subt_msgs::ArtifactPose arti_pose = subt_msgs::ArtifactPose();
  		geometry_msgs::Pose pose;
			arti_pose.Class = "backpack";
			arti_pose.probability = 1;

			float *y= new float (req.a);
			float *x= new float (req.b);
  		if (0 <= *x && *x < 480 && 0 <= *y && *y < 640){
				// z = float(img_ptr_depth->image.at<unsigned short int>(*x, *y)) / 1000.;
				z = 1;
			}else{
				z = 0;
			}

  		getXYZ(y, x, z);
  		cout << "x: " << z << " y: " << -*y << " z: " << -*x << endl;
  		pose.position.x = z;
  		pose.position.y = -*y;
  		pose.position.z = -*x;
  		arti_pose.pose = pose;

  		free(x);
  		free(y);
  		arti_pose_arr.pose_array.push_back(arti_pose);

    	pub_pose.publish(arti_pose_arr);
    	return 1;
    }


    void getXYZ(float *a, float *b, float zc){
    	float inv_fx = 1.0 / fx;
    	float inv_fy = 1.0 / fy;
    	*a = (*a - cx) * zc * inv_fx;
    	*b = (*b - cy) * zc * inv_fy;
    	return;
    }
};




int main(int argc, char **argv)
{
	init(argc, argv, "pub_arti_pose_ssd");
	NodeHandle nh;
	pub_arti_pose_ssd pub_arti_pose_ssd(nh);
	ROS_INFO("start c_server");
	spin();
	return 0;
}
