# Remote-control
Based on Pi and Cloud server

The project aims to remotely control a minicar.

Firstly, the files in Arduino folder are to receive commands from a Raspberra Pi and control the car locally. I use an Arduino, which is a Micro controller to control and drive the car and some sensors like cameras. Moreover, it should gather data an d info from sensors and communicate with the Pio.

Secondly, the files in Pi folder are to connect itself to a cloud server where it can receive commands from. It should have the ability to drive cameras and  stream the video to the server. Whats more, it can record the commands getting from the cloud server and save it locally and upload the .sql file regularly.

Thirdly, the files in Cloud are used to drive web pages and get the info from remote users. Then the server send commands to corresponding minicar and show the user the state of the car, data from sensors and stream video from camera. The server also have a local database to record the info of users' login, commands sent, log out and other infomation.
