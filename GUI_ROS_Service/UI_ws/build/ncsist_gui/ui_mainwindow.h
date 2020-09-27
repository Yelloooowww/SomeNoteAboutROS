/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QListWidget>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QWidget *gridLayoutWidget;
    QGridLayout *gridLayout;
    QLabel *label_img;
    QRadioButton *radioButton_auto;
    QRadioButton *radioButton_manual;
    QPushButton *pushButton_start;
    QPushButton *pushButton_pause;
    QPushButton *pushButton_back;
    QPushButton *pushButton_up;
    QPushButton *pushButton_left;
    QPushButton *pushButton_right;
    QPushButton *pushButton_down;
    QListWidget *listWidget;
    QListWidget *listWidget_2;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(1088, 549);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        gridLayoutWidget = new QWidget(centralwidget);
        gridLayoutWidget->setObjectName(QStringLiteral("gridLayoutWidget"));
        gridLayoutWidget->setGeometry(QRect(10, 10, 641, 481));
        gridLayout = new QGridLayout(gridLayoutWidget);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        label_img = new QLabel(gridLayoutWidget);
        label_img->setObjectName(QStringLiteral("label_img"));

        gridLayout->addWidget(label_img, 0, 0, 1, 1);

        radioButton_auto = new QRadioButton(centralwidget);
        radioButton_auto->setObjectName(QStringLiteral("radioButton_auto"));
        radioButton_auto->setGeometry(QRect(670, 20, 112, 23));
        radioButton_manual = new QRadioButton(centralwidget);
        radioButton_manual->setObjectName(QStringLiteral("radioButton_manual"));
        radioButton_manual->setGeometry(QRect(670, 60, 112, 23));
        pushButton_start = new QPushButton(centralwidget);
        pushButton_start->setObjectName(QStringLiteral("pushButton_start"));
        pushButton_start->setGeometry(QRect(680, 110, 89, 25));
        pushButton_pause = new QPushButton(centralwidget);
        pushButton_pause->setObjectName(QStringLiteral("pushButton_pause"));
        pushButton_pause->setGeometry(QRect(680, 150, 89, 25));
        pushButton_back = new QPushButton(centralwidget);
        pushButton_back->setObjectName(QStringLiteral("pushButton_back"));
        pushButton_back->setGeometry(QRect(680, 190, 89, 25));
        pushButton_up = new QPushButton(centralwidget);
        pushButton_up->setObjectName(QStringLiteral("pushButton_up"));
        pushButton_up->setGeometry(QRect(890, 70, 89, 25));
        pushButton_left = new QPushButton(centralwidget);
        pushButton_left->setObjectName(QStringLiteral("pushButton_left"));
        pushButton_left->setGeometry(QRect(820, 110, 89, 25));
        pushButton_right = new QPushButton(centralwidget);
        pushButton_right->setObjectName(QStringLiteral("pushButton_right"));
        pushButton_right->setGeometry(QRect(960, 110, 89, 25));
        pushButton_down = new QPushButton(centralwidget);
        pushButton_down->setObjectName(QStringLiteral("pushButton_down"));
        pushButton_down->setGeometry(QRect(890, 150, 89, 25));
        listWidget = new QListWidget(centralwidget);
        listWidget->setObjectName(QStringLiteral("listWidget"));
        listWidget->setGeometry(QRect(670, 240, 191, 251));
        listWidget_2 = new QListWidget(centralwidget);
        listWidget_2->setObjectName(QStringLiteral("listWidget_2"));
        listWidget_2->setGeometry(QRect(870, 240, 201, 251));
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 1088, 22));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QStringLiteral("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", Q_NULLPTR));
        label_img->setText(QApplication::translate("MainWindow", "TextLabel", Q_NULLPTR));
        radioButton_auto->setText(QApplication::translate("MainWindow", "Auto", Q_NULLPTR));
        radioButton_manual->setText(QApplication::translate("MainWindow", "Manual", Q_NULLPTR));
        pushButton_start->setText(QApplication::translate("MainWindow", "Start", Q_NULLPTR));
        pushButton_pause->setText(QApplication::translate("MainWindow", "Pause", Q_NULLPTR));
        pushButton_back->setText(QApplication::translate("MainWindow", "Back", Q_NULLPTR));
        pushButton_up->setText(QApplication::translate("MainWindow", "\342\206\221", Q_NULLPTR));
        pushButton_left->setText(QApplication::translate("MainWindow", "\342\206\220", Q_NULLPTR));
        pushButton_right->setText(QApplication::translate("MainWindow", "\342\206\222", Q_NULLPTR));
        pushButton_down->setText(QApplication::translate("MainWindow", "\342\206\223", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
