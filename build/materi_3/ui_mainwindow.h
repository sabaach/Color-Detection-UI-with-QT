/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QLineEdit *Hue_max;
    QLineEdit *Saturation_max;
    QPushButton *pushButton;
    QLineEdit *Value_max;
    QLineEdit *Hue_min;
    QLineEdit *Saturation_min;
    QLineEdit *Value_min;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_4;
    QLabel *label_5;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(397, 352);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        Hue_max = new QLineEdit(centralwidget);
        Hue_max->setObjectName(QString::fromUtf8("Hue_max"));
        Hue_max->setGeometry(QRect(80, 50, 113, 25));
        Saturation_max = new QLineEdit(centralwidget);
        Saturation_max->setObjectName(QString::fromUtf8("Saturation_max"));
        Saturation_max->setGeometry(QRect(80, 110, 113, 25));
        pushButton = new QPushButton(centralwidget);
        pushButton->setObjectName(QString::fromUtf8("pushButton"));
        pushButton->setGeometry(QRect(170, 250, 83, 25));
        Value_max = new QLineEdit(centralwidget);
        Value_max->setObjectName(QString::fromUtf8("Value_max"));
        Value_max->setGeometry(QRect(80, 170, 113, 25));
        Hue_min = new QLineEdit(centralwidget);
        Hue_min->setObjectName(QString::fromUtf8("Hue_min"));
        Hue_min->setGeometry(QRect(250, 50, 113, 25));
        Saturation_min = new QLineEdit(centralwidget);
        Saturation_min->setObjectName(QString::fromUtf8("Saturation_min"));
        Saturation_min->setGeometry(QRect(250, 110, 113, 25));
        Value_min = new QLineEdit(centralwidget);
        Value_min->setObjectName(QString::fromUtf8("Value_min"));
        Value_min->setGeometry(QRect(250, 170, 113, 25));
        label = new QLabel(centralwidget);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(90, 20, 81, 17));
        label_2 = new QLabel(centralwidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setGeometry(QRect(260, 20, 91, 17));
        label_3 = new QLabel(centralwidget);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setGeometry(QRect(0, 50, 67, 17));
        label_4 = new QLabel(centralwidget);
        label_4->setObjectName(QString::fromUtf8("label_4"));
        label_4->setGeometry(QRect(0, 110, 81, 17));
        label_5 = new QLabel(centralwidget);
        label_5->setObjectName(QString::fromUtf8("label_5"));
        label_5->setGeometry(QRect(0, 170, 81, 17));
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 397, 22));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", nullptr));
        pushButton->setText(QApplication::translate("MainWindow", "SAT SET !!!", nullptr));
        label->setText(QApplication::translate("MainWindow", "Batas atas", nullptr));
        label_2->setText(QApplication::translate("MainWindow", "Batas bawah", nullptr));
        label_3->setText(QApplication::translate("MainWindow", "Hue :", nullptr));
        label_4->setText(QApplication::translate("MainWindow", "Saturation:", nullptr));
        label_5->setText(QApplication::translate("MainWindow", "Value :", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
