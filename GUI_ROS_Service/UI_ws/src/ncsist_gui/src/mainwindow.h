#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QObject>
#include <QCheckBox>
#include <QDialog>
#include <QImage>
#include <QString>
#include <QPixmap>
#include <QMessageBox>
#include <QMouseEvent>
#include <QPoint>
#include <QDebug>
#include <QThread>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/highgui/highgui.hpp>

#include <sstream>
#include <iostream>
#include <vector>

#include <ros/ros.h>
#include <std_msgs/Int32.h>
#include "sub_thread.h"
#include "sub_artimap.h"
#include "roscpp_tutorials/TwoInts.h"
#include "subt_msgs/artifact.h"
#include "subt_msgs/ArtifactPose.h"
#include "subt_msgs/ArtifactPoseArray.h"
#include "subt_msgs/int8.h"

using namespace std;
using namespace ros;

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
    vector<QImage *> image_list;
    roscpp_tutorials::TwoInts srv;
    subt_msgs::int8 srv_cmd_vel;


    // void cb_pose(const subt_msgs::ArtifactPoseArray::ConstPtr &msg);



private slots:
    void on_pushButton_left_pressed();
    void on_pushButton_up_pressed();
    void on_pushButton_right_pressed();
    void on_pushButton_down_pressed();

private:
    Ui::MainWindow *ui;
    NodeHandle *nh;
    sub_thread *sub_cam;
    sub_artimap *sub_arti;
    sub_artimap *sub_arti_cmd_vel;
    ServiceClient h1;
    ServiceClient h2;

signals:
  void set_image_sig(int);
  void add_to_pose_sig(QString);

public slots:
  void set_image(int);
  void add_to_pose(QString arti_string);
  void add_to_cmd_vel(QString cmd_vel_string);

protected:
  void mouseDoubleClickEvent(QMouseEvent *event);



};
#endif // MAINWINDOW_H
