
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <iostream> 

using namespace std;
using namespace cv;

cv::Mat rotateCvImage(cv::Mat& input)
{

cv::Mat imgRotated;
cv::Point2f pc(input.cols/2., input.rows/2.);
cv::Mat r = cv::getRotationMatrix2D(pc, 180, 1.0);
cv::warpAffine(input, imgRotated, r, input.size());

//resize the image
cv::resize(imgRotated,imgRotated,cv::Size(640,360));
return imgRotated;
}


void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
  cv::Mat imgJpg = cv_bridge::toCvShare(msg,sensor_msgs::image_encodings::MONO8)->image;
	
  cv::Mat imgDecoded = cv::imdecode(imgJpg,CV_LOAD_IMAGE_COLOR);
	
  cv::imshow("view",rotateCvImage(imgDecoded));
  cout << "Displaying the image" << endl; 
    
  cv::waitKey(30);  
 
}
void cannyCallback(const sensor_msgs::ImageConstPtr& msg)
{
	cv::Mat cannyImg = cv_bridge::toCvShare(msg,sensor_msgs::image_encodings::MONO8)->image;

	cv::imshow("canny_view",rotateCvImage(cannyImg));

	cout << "Displaying the canny edges image" << endl;
	cv::waitKey(30);

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "jpeg_display");
  ros::NodeHandle nh;
  cv::namedWindow("view");
  cv::startWindowThread();

  cv::namedWindow("canny_view");
  cv::startWindowThread();

  image_transport::ImageTransport it(nh);
  image_transport::Subscriber sub = it.subscribe("image/compressed", 1, imageCallback);
  image_transport::Subscriber canny_sub = it.subscribe("image/cannyEdges", 1, cannyCallback);
  ros::spin();
  cv::destroyWindow("view");
}
