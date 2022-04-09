#!/usr/bin/env python3
import numpy as np
import cv2
import rospy
from opencamera.msg import value
from std_msgs.msg import String

def callback(value):
#Tangkap Gambar
    webcam = cv2.VideoCapture(0)   
    while (1):
            _, imageFrame = webcam.read()
    # Convert ke hsv
            hsvFrame = cv2.cvtColor(imageFrame, cv2.COLOR_BGR2HSV)
    # Set range warna merah dan masking
            red_lower = np.array([value.hue_min, value.saturation_min, value.value_min], np.uint8)
            red_upper = np.array([value.hue_max, value.saturation_max, value.value_max], np.uint8)
            red_mask = cv2.inRange(hsvFrame, red_lower, red_upper)
            # Set range warna hijau dan masking
            green_lower = np.array([25, 52, 72], np.uint8)
            green_upper = np.array([102, 255, 255], np.uint8)
            green_mask = cv2.inRange(hsvFrame, green_lower, green_upper)
            # Set range warna biru dan masking
            #blue_lower = np.array([94, 80, 2], np.uint8)
            #blue_upper = np.array([120, 255, 255], np.uint8)
            #blue_mask = cv2.inRange(hsvFrame, blue_lower, blue_upper)
            # Morphological Transform, Dilation
            kernal = np.ones((5, 5), "uint8")
            # morfologi warna merah
            red_mask = cv2.dilate(red_mask, kernal)
            res_red = cv2.bitwise_and(imageFrame, imageFrame,
                                    mask=red_mask)
            # morforlogi warna hijau
            green_mask = cv2.dilate(green_mask, kernal)
            res_green = cv2.bitwise_and(imageFrame, imageFrame,
                                        mask=green_mask)
            # morfologi warna biru
            #blue_mask = cv2.dilate(blue_mask, kernal)
            #res_blue = cv2.bitwise_and(imageFrame, imageFrame,
            #                          mask=blue_mask)
            # contour warna merah
            contours, hierarchy = cv2.findContours(red_mask,
                                                cv2.RETR_TREE,
                                                cv2.CHAIN_APPROX_SIMPLE)
            for pic, contour in enumerate(contours):
                area = cv2.contourArea(contour)
                if (area > 300):
                    x, y, w, h = cv2.boundingRect(contour)
                    imageFrame = cv2.rectangle(imageFrame, (x, y),
                                            (x + w, y + h),
                                            (0, 0, 255), 2)
                    cv2.putText(imageFrame, "Merah", (x, y),
                                cv2.FONT_HERSHEY_SIMPLEX, 1.0,
                                (0, 0, 255))
            # contour warna hijau
            contours, hierarchy = cv2.findContours(green_mask,
                                                cv2.RETR_TREE,
                                                cv2.CHAIN_APPROX_SIMPLE)
            for pic, contour in enumerate(contours):
                area = cv2.contourArea(contour)
                if (area > 300):
                    x, y, w, h = cv2.boundingRect(contour)
                    imageFrame = cv2.rectangle(imageFrame, (x, y),
                                            (x + w, y + h),
                                            (0, 255, 0), 2)

                    cv2.putText(imageFrame, "Hijau", (x, y),
                                cv2.FONT_HERSHEY_SIMPLEX,
                                1.0, (0, 255, 0))
            #contour warna biru 
            #contours, hierarchy = cv2.findContours(blue_mask,
            #                                      cv2.RETR_TREE,
            #                                     cv2.CHAIN_APPROX_SIMPLE)
            #for pic, contour in enumerate(contours):
            #   area = cv2.contourArea(contour)
            #  if (area > 300):
            #     x, y, w, h = cv2.boundingRect(contour)
                #    imageFrame = cv2.rectangle(imageFrame, (x, y),
                #                              (x + w, y + h),
                #                             (255, 0, 0), 2)
                # cv2.putText(imageFrame, "Biru", (x, y),
                    #            cv2.FONT_HERSHEY_SIMPLEX,
                    #           1.0, (255, 0, 0))
            cv2.imshow("Alat pendeteksi warna", imageFrame)
            #cv2.imshow("mask blue", res_blue)
            if cv2.waitKey(10) & 0xFF == ord('q'):
                webcam.release()
                cv2.destroyAllWindows()
                break
    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("materi_3", value, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
