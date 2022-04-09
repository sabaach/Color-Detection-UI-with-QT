#include "mainwindow.h"

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent), ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    pub_msg = nh.advertise<materi_3::value>("materi_3", 1000);
    connect(ui->pushButton, &QPushButton::clicked, this, &MainWindow::send_data);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::send_data()
{
    int data_hue_max = ui->Hue_max->text().toInt();
    int data_saturation_max = ui->Saturation_max->text().toInt();
    int data_value_max = ui->Value_max->text().toInt();
    int data_hue_min = ui->Hue_min->text().toInt();
    int data_saturation_min = ui->Saturation_min->text().toInt();
    int data_value_min = ui->Value_min->text().toInt();

    pub_data(data_hue_max, data_saturation_max, data_value_max, data_hue_min, data_saturation_min, data_value_min);
}

void MainWindow::pub_data(int hue_max, int saturation_max, int value_max, int hue_min, int saturation_min, int value_min)
{
    dataPublish.hue_max = hue_max;
    dataPublish.saturation_max = saturation_max;
    dataPublish.value_max = value_max;
    dataPublish.hue_min = hue_min;
    dataPublish.saturation_min = saturation_min;
    dataPublish.value_min = value_min;
    
    pub_msg.publish(dataPublish);
}