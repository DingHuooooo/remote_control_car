from ftplib import FTP
import os
import time
import socket
 
 
class FTPUpDownLoad:
    """
    FTP自动上传和下载各种类型的文件
    """
 
    def __init__(self, host, port=21):
        """
        必要的参数
        :param host: ip地址或域名
        :param port: 端口号，默认21
        """
        self.host = host
        self.port = port
        self.ftp = FTP()  # 首先要创建对象
        self.ftp.encoding = 'gbk'  # 中文编码
#        self.log_file = open('/home/uos/Desktop/log.txt', 'a')  # 追加日志系你想
        self.file_list = []
 
    def log_in(self, username, passwd):
        """
        用户登陆FTP服务器，已把FTP设置匿名不可访问，因此必须给定用户名和密码
        :param username: 用户名
        :param passwd: 密码
        :return:
        """
        try:
            time_out = 30
            # 登陆时间限制
            socket.setdefaulttimeout(time_out)
            # 0是主动模式，1是被动模式
            self.ftp.set_pasv(True)
 
            # 连接到FTP服务器
            self.debug_print('开始连接到 %s' % self.host)
            self.ftp.connect(self.host, self.port)
            self.debug_print('成功连接到 %s' % self.host)
            # 登陆
            self.debug_print('开始登陆到 %s' % self.host)
            self.ftp.login(username, passwd)
            self.debug_print('成功登陆到 %s' % self.host)
            # self.debug_print(self.ftp.getwelcome())
        except Exception as e:
            self.debug_print('FTP连接或登陆失败，错误描述为：%s' % e)
            # pass
 
    def is_empty(self, filename):
        """
        判断文件是否为空，如果为空，则不上传或下载
        :param filename: 文件名
        :return:
        """
        try:
            file_size = self.ftp.size(filename)
            if file_size == 0:
                return 1
            else:
                return 0
        except Exception as e:
            self.debug_print('文件为空或损坏，错误描述为 %s' % e)
 
    def download_from_ftp(self, local_path, remote_path):
        """
        把FTP服务器文件夹下的所有文件下载到本地文件夹
        :param local_path: 本地路径，如：'/home/uos/Desktop/file/'
        :param remote_path: FTP服务器文件存储路径，如： '/'
        :return:
        """
        try:
            buffsize = 1024
            # 分别获取本地文件夹和远程文件夹的文件
            local_files = os.listdir(local_path)
            remote_files = self.ftp.nlst()
 
            for remote_file in remote_files:
                # 如果远程文件已经被下载，则退出下载，给出提示
                if remote_file in local_files:
                    self.debug_print(remote_file + ' has already been downloaded, downloading next file')
                else:
                    self.debug_print('--begin downloading file: %s--' % (remote_path + remote_file))
                    file_handler = open(local_path + remote_file, 'wb')
                    self.ftp.retrbinary('RETR ' + remote_path + remote_file, file_handler.write, buffsize)
                    file_handler.close()
                    self.debug_print('--successfully downloaded--')
            # self.ftp.quit()
        except Exception as e:
            self.debug_print('下载文件出错，错误描述为 %s' % e)
 
    def upload_to_ftp(self, local_path, remote_path):
        """
        把本地文件夹下的所有文件上传到FTP服务器
        :param local_path: 本地文件存储路径，如：'/home/uos/Desktop/file/'
        :param remote_path: FTP服务器根路径，如：'/'
        :return:
        """
        try:
            buffsize = 1024
            # 分别获取本地文件夹和远程文件夹的文件
            local_files = os.listdir(local_path)
            remote_files = self.ftp.nlst()
 
            for local_file in local_files:
                self.debug_print('--begin uploading file: %s--' % (local_path + local_file))
                file_handler = open(local_path + local_file, 'rb')
                self.ftp.storbinary('STOR ' + remote_path + local_file, file_handler, buffsize)
                file_handler.close()
                self.debug_print('--successfully uploaded--')
            # self.ftp.quit()
        except Exception as e:
            self.debug_print('上传文件失败，错误信息描述为：%s' % e)
 
    def debug_print(self, log):
        """
        打印运行日志
        :param log: 待打印信息
        :return:
        """
        self.write_log(log)
 
    def write_log(self, log):
        """
        记录运行日志
        :param log: 日志信息
        :return:
        """
        time_now = time.localtime()
        time_format = time.strftime('%Y/%m%d--%H:%M:%S', time_now)
        log_str = '%s --> %s \n' % (time_format, log)
        print(log_str)
        # append
#        self.log_file.write(log_str)
 
    def close(self):
        """
        退出FTP
        :return:
        """
        self.debug_print('退出FTP服务器')
        self.ftp.quit()
#        self.log_file.close()
 
 
# running
def upload():
    path_pc='C:/Users/23742/Desktop/Remote_control_system/database/sql/sqlfile/'
    path_pi= '/home/pi/cancer/Remote_control_system/database/sql/sqlfile/'
    
    ftpupdown = FTPUpDownLoad('8.218.127.197')
    ftpupdown.log_in('client1', '061218cancer')
    # upload to ftp
    ftpupdown.upload_to_ftp(path_pi, '/')  # 一定要注意，最后一定要加个 ‘/’
    # download files from ftp
    #ftpupdown.download_from_ftp('/home/uos/Desktop/file', '/')
    # close ftp connection
    ftpupdown.close()

