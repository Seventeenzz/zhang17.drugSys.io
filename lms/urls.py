from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
from . import views

app_name = 'lms'


urlpatterns = [
    # 登录页
    path('', views.loginOfAll, name='loginOfAll'),
    # 学生端
    path('index', views.index, name='lms_index'),

    path('ins_index', views.ins_index, name='ins_index'),

    path('lab', views.lab, name='lab'),
    path('browseHistory', views.borrowHistory, name='borrowHistory'),
    path('ins_browseHistory', views.borrowInsHistory, name='borrowInsHistory'),
    path('userCentre', views.userCentre, name='userCentre'),
    path('changePassword', views.changePassword, name='changePassword'),
    path('about', views.about, name='about'),
    path('subAndBo/<int:medicine_id>', views.subAndBo, name='subAndBo'),

    path('ins_subAndBo/<int:ins_id>', views.ins_subAndBo, name='ins_subAndBo'),

    path('login/', views.loging, name='login'),
    path('logout/', views.logouting, name='logout'),
    path('register/', views.register, name='register'),
    path('detail/<int:medicineId>', views.medicineDetail, name='medicineDetail'),
    path('medicineSearch/', views.medicineSearch, name='medicineSearch'),
    path('user_info/',views.userInfo,name='userInfo'),

    path('download_file/<int:doc_id>',views.download_file,name='download_file'),
    # path('download_template1/',views.download_template1,name='download_template1'),
    # path('download_template2/',views.download_template2,name='download_template2'),
    # path('download_template3/',views.download_template3,name='download_template3'),


    # admin中的
    path('admin/chart1/', views.chart1, name='chart1'),
    path('admin/chart2/', views.chart2, name='chart2'),
    path('admin/predict/', views.predict, name='predict'),
]
