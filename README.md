[![github](https://img.shields.io/badge/language-Django-yellow.svg)]()
[![github](https://img.shields.io/badge/build-Python-green.svg)]()

###在线演示环境
http://101.34.18.118:8002/
<br>（图片未压缩，所以加载有点慢）

这个不知道被谁用admin改密了，导致admin不能登录了了👀👀

##### 1. 学生端
    学生账号：19001234
    学生密码：xm123456
##### 2. 管理员端/教师端
    管理员账号：admin
    管理员密码：admin123
    
    教师账号： x100x
    教师密码： x100x123

### 运行环境
在Python3.7,Django2.2,MySQL8.0 版本下测试运行成功，windows,linux平台。
### 运行步骤
首先安装好运行环境，配置好python虚拟环境

```bash
1.安装requirements.txt依赖包（环境）
pip install -r requirements.txt

2.修改settings.py下的数据库配置
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        # 'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
        'NAME': 'lms',
        'HOST': '127.0.0.1',
        'PORT': '3306',
        'USER': 'root',
        'PASSWORD': 'root'
    }
}

3.导入数据库文件lms.sql

python manage.py makemigrations
python manage.py migrate
#上面两步进行迁移，完成数据库表的建立


4.命令行输入
python manage.py runserver
#默认端口开在127.0.0.1:8000


PS：#创建超级管理员用户
python manage.py createsuperuser

5.然后浏览器打开localhost:8080/127.0.0.1:8000/进入管理系统

```


###页面展示
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/loginOfAll.jpg)

学生端
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/login.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/about.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/detail.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/index.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/lab.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/register.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/search.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/userCentre.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/usr_info.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/borrow.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/borrowHistory.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/changePass.jpg)

管理端
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/adminlogin.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/adminindex.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/chart1.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/chart2.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/daochu.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/bo.jpg)
![image text](https://gitee.com/zcystart/chemlab/raw/master/lms/static/lms/example/pic/predict.jpg)





###导入药品列表说明
    文件 lms/static/lms/example/xls/Medicine-2022-01-27.xls


采用了开源的simpleui

<br>
<br>
<br>
<br>
<br>
<br/>
<br/>

2022-6-21更新
#错误提示

```
query = query.decode(errors='replace')
AttributeError: 'str' object has no attribute 'decode'

```

点击最后一条链接， 将decode改为encode

    def last_executed_query(self, cursor, sql, params):
        # With MySQLdb, cursor objects have an (undocumented) "_executed"
        # attribute where the exact query sent to the database is saved.
        # See MySQLdb/cursors.py in the source distribution.
        query = getattr(cursor, '_executed', None)
        if query is not None:
            query = query.decode(errors='replace')
        return query
        
        
 query = query.encode(errors='replace')
 
 
 
 ```
 可视化页面错误是近一个月没有借用药品导致，可以借用消除！
 相关bug想自己修复到views.py里面predict函数进行修改
 
 
 ```

本项目停止维护，不再解答相关问题