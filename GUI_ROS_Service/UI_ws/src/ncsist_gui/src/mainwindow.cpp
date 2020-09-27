#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "ros/ros.h"
#include <sstream>


MainWindow::MainWindow(QWidget *parent) :
  QMainWindow(parent),
  ui(new Ui::MainWindow)
{
  ui->setupUi(this);

  nh =new ros::NodeHandle;
  h1 = nh->serviceClient<roscpp_tutorials::TwoInts>("ui_position_service");
  h2 = nh->serviceClient<subt_msgs::int8>("manual_cmd_vel");


  for (int i = 0; i < 6; i++)
  {
    image_list.push_back(new QImage);
  }

  sub_cam = new sub_thread(parent, nh, this, "/camera/color/image_raw", 0);
  sub_cam->start();
  sub_arti = new sub_artimap(parent, nh, this, "artifact_pose", 0);
  sub_arti->start();
  sub_arti_cmd_vel = new sub_artimap(parent, nh, this, "cmd_vel", 1);
  sub_arti_cmd_vel->start();

  connect(this, SIGNAL(set_image_sig(int)), SLOT(set_image(int)));
  connect(this, SIGNAL(add_to_pose_sig(QString)), SLOT(add_to_pose(QString)));
}

void MainWindow::set_image(int i)
{
  if (image_list[i])
  {
    switch (i)
    {
    case 0:
      ui->label_img->setPixmap(QPixmap::fromImage(*image_list[i]));
      break;
    }
  }
}



void MainWindow::add_to_pose(QString arti_string)
{
  ui->listWidget->clear();
  ui->listWidget->addItem(arti_string);
}

void MainWindow::add_to_cmd_vel(QString cmd_vel_string)
{
  ui->listWidget_2->clear();
  ui->listWidget_2->addItem(cmd_vel_string);
}



void MainWindow::mouseDoubleClickEvent(QMouseEvent *e){
  if( (e->x()-10)>=0 && (e->x()-10)<=640 && (e->y()-10)>=0 && (e->y()-10)<=480 ){
    srv.request.a  = e->x()-10 ;
    srv.request.b  = e->y()-10 ;
    if (h1.call(srv)){
      ROS_INFO("call success");
    }
    else{
      ROS_ERROR("Failed to call service");
    }
  }
}




void MainWindow::on_pushButton_left_pressed()
{
  ROS_INFO("on_pushButton_left_pressed");
  ui->listWidget_2->addItem("left\n");
  srv_cmd_vel.request.data=3 ;
  if (h2.call(srv_cmd_vel)){
    ROS_INFO("call success on_pushButton_left_pressed");
  }
  else{
    ROS_ERROR("Failed to call service on_pushButton_left_pressed");
  }
}

void MainWindow::on_pushButton_up_pressed()
{
  ROS_INFO("on_pushButton_up_pressed");
  ui->listWidget_2->addItem("up\n");
  srv_cmd_vel.request.data=1;
  if (h2.call(srv_cmd_vel)){
    ROS_INFO("call success on_pushButton_up_pressed");
  }
  else{
    ROS_ERROR("Failed to call service on_pushButton_up_pressed");
  }
}

void MainWindow::on_pushButton_right_pressed()
{
  ROS_INFO("on_pushButton_right_pressed");
  ui->listWidget_2->addItem("right\n");
  srv_cmd_vel.request.data=4 ;
  if (h2.call(srv_cmd_vel)){
    ROS_INFO("call success on_pushButton_right_pressed");
  }
  else{
    ROS_ERROR("Failed to call service on_pushButton_right_pressed");
  }
}

void MainWindow::on_pushButton_down_pressed()
{
  ROS_INFO("on_pushButton_down_pressed");
  ui->listWidget_2->addItem("down\n");
  srv_cmd_vel.request.data=2;
  if (h2.call(srv_cmd_vel)){
    ROS_INFO("call success on_pushButton_down_pressed");
  }
  else{
    ROS_ERROR("Failed to call service on_pushButton_down_pressed");
  }
}




MainWindow::~MainWindow()
{
    delete ui;
}
