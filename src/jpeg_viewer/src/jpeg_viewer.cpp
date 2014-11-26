
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <iostream> 

using namespace std;
using namespace cv;


void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
	cv::Mat imgJpg = cv_bridge::toCvShare(msg,sensor_msgs::image_encodings::MONO8)->image;
	
	cv::Mat imgDecoded = cv::imdecode(imgJpg,CV_LOAD_IMAGE_COLOR);
	
    cv::imshow("view",imgDecoded);
    cout << "Displaying the image" << endl; 
    
    cv::waitKey(30);
  

   
  
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "image_listener");
  ros::NodeHandle nh;
  cv::namedWindow("view");
  cv::startWindowThread();
  image_transport::ImageTransport it(nh);
  image_transport::Subscriber sub = it.subscribe("image/compressed", 1, imageCallback);
  ros::spin();
  cv::destroyWindow("view");
}
