
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

char * window_name = "view";
int lowThreshold;
int max_lowThreshold =100;
int ratio = 3;
int kernel_size =3;

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

cv::Mat cannyEdgeDetector(cv::Mat& imgRotated)
{
  cv::Mat imgEdges;
  cv::Mat imgGrey;
  cv::cvtColor( imgRotated, imgGrey, CV_RGB2GRAY );
  cv::blur( imgGrey, imgEdges, Size(3,3));
  cv::Canny( imgEdges, imgEdges, lowThreshold, lowThreshold*ratio, kernel_size);
  return imgEdges;
}


void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
  cv::Mat imgJpg = cv_bridge::toCvShare(msg,sensor_msgs::image_encodings::MONO8)->image;
	
  cv::Mat imgDecoded = cv::imdecode(imgJpg,CV_LOAD_IMAGE_COLOR);
	cv::Mat imgRotated = rotateCvImage(imgDecoded);
  
  cv::imshow("view",cannyEdgeDetector(imgRotated));
  cout << "Displaying the image" << endl; 
    
  cv::waitKey(30);  
 
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "edge_detector");
  ros::NodeHandle nh;
  cv::namedWindow(window_name);
  cv::createTrackbar( "Min Threshold:", window_name, &lowThreshold, max_lowThreshold, NULL);
  cv::startWindowThread();
  image_transport::ImageTransport it(nh);
  image_transport::Subscriber sub = it.subscribe("image/compressed", 1, imageCallback);
  ros::spin();
  cv::destroyWindow("view");
}
