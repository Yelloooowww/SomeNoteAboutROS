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
  h1_pose=nh->advertise<std_msgs::Int16MultiArray>("ui_position", 1);
  h2_cmd_vel=nh->advertise<std_msgs::String>("ui_manual_cmd_vel", 1);
  h3_FSMstate=nh->advertise<std_msgs::String>("FSMstate", 1);


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


  this->on_radioButton_manual_toggled(1);//default
  ROS_INFO("MainWin init done");
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
    std_msgs::Int16MultiArray msg;
    msg.data.clear();
    msg.data.push_back(e->x()-10);
    msg.data.push_back(e->y()-10);
    h1_pose.publish(msg);
  }
}

void MainWindow::on_pushButton_left_pressed()
{
  ROS_INFO("on_pushButton_left_pressed");
  ui->listWidget_2->addItem("left\n");
  std_msgs::String msg;
  std::stringstream ss;
  ss << "left" ;
  msg.data = ss.str();
  h2_cmd_vel.publish(msg);
}

void MainWindow::on_pushButton_up_pressed()
{
  ROS_INFO("on_pushButton_up_pressed");
  ui->listWidget_2->addItem("up\n");
  std_msgs::String msg;
  std::stringstream ss;
  ss << "up" ;
  msg.data = ss.str();
  h2_cmd_vel.publish(msg);
}

void MainWindow::on_pushButton_right_pressed()
{
  ROS_INFO("on_pushButton_right_pressed");
  ui->listWidget_2->addItem("right\n");
  std_msgs::String msg;
  std::stringstream ss;
  ss << "right" ;
  msg.data = ss.str();
  h2_cmd_vel.publish(msg);
}

void MainWindow::on_pushButton_down_pressed()
{
  ROS_INFO("on_pushButton_down_pressed");
  ui->listWidget_2->addItem("down\n");
  std_msgs::String msg;
  std::stringstream ss;
  ss << "down" ;
  msg.data = ss.str();
  h2_cmd_vel.publish(msg);

}


void MainWindow::on_radioButton_auto_toggled(bool checked)
{
  if (checked){
    std_msgs::String msg;
    std::stringstream ss;
    ss << "auto_move_to_goal" ;
    msg.data = ss.str();
    h3_FSMstate.publish(msg);
  }
}

void MainWindow::on_radioButton_manual_toggled(bool checked)
{
  if (checked){

    std_msgs::String msg;
    std::stringstream ss;
    ss << "manual" ;
    msg.data = ss.str();
    h3_FSMstate.publish(msg);
    ROS_INFO("on_radioButton_manual_toggled");
  }
}


void MainWindow::on_radioButton_back_toggled(bool checked)
{
  if (checked){
    std_msgs::String msg;
    std::stringstream ss;
    ss << "auto_move_back" ;
    msg.data = ss.str();
    h3_FSMstate.publish(msg);
  }
}

MainWindow::~MainWindow()
{
    delete ui;
}
