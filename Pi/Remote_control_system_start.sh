
screen_name=$"web_control"
screen -dmS $screen_name
cmd=$"cd /home/pi/cancer/Remote_control_system"
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff '\n'
cmd=$"python3 web_control.py"
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff '\n'


screen_name=$"sql_save_and_upload"
screen -dmS $screen_name
cmd=$"cd /home/pi/cancer/Remote_control_system/database/sql"
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff '\n'
cmd=$"python3 sql_save_and_upload.py"
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff '\n'


screen_name=$"pi_cam"
screen -dmS $screen_name
cmd=$"cd /home/pi/cancer/Remote_control_system/sh_file"
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff '\n'
cmd=$"./startcam.sh"
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff '\n'

screen_name=$"frpc"
screen -dmS $screen_name
cmd=$"cd /home/pi/cancer/Remote_control_system/sh_file"
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff '\n'
cmd=$"./startfrpc.sh"
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff '\n'
