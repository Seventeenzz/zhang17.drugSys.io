from django.db import models
from django.contrib.auth.models import User


# Create your models here.

class Lab(models.Model):
    """实验室表"""

    class Meta:
        verbose_name = '实验室'
        verbose_name_plural = verbose_name

    name = models.CharField('实验室名', max_length=20)
    description = models.TextField('实验室描述', blank=True)

    def __str__(self):
        return self.name


class Medicine(models.Model):
    """药品表"""

    class Meta:
        verbose_name = '药品列表'
        verbose_name_plural = verbose_name
        ordering = ('number',)

    # 药品信息类
    number = models.CharField('药品编号', max_length=13, unique=True)
    name = models.CharField('药品名', max_length=200)
    detail = models.TextField('药品信息', max_length=2000, blank=True)
    nowtotal = models.IntegerField('药品剩余量', default=0)
    usedtotal = models.IntegerField('药品用量', default=0)
    riskfactor = models.IntegerField('风险因子', default=0)

    def __str__(self):
        return self.name


class Instrument(models.Model):
    "2/28填装药品的仪器表"

    class Meta:
        verbose_name = '仪器列表'
        verbose_name_plural = verbose_name
        ordering = ('ins_no',)

    # 仪器信息
    ins_no = models.CharField('仪器编号', max_length=13, unique=True)
    ins_name = models.CharField('仪器名称', max_length=200)
    ins_detail = models.TextField('仪器信息', max_length=2000, blank=True)
    ins_nowtotal = models.IntegerField('仪器剩余数', default=0)
    ins_bototal = models.IntegerField('仪器借用数', default=0)

    def __str__(self):
        return self.ins_name


class CommonUser(models.Model):
    """学生表"""
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    nickyName = models.CharField('昵称', blank=True, max_length=50)
    cate = models.BooleanField('类别', default=False)
    # False stands for students, True represent Teacher
    faculty = models.CharField('系别', max_length=20, blank=True, default='undefine')

    class Meta:
        verbose_name = '学生信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return str(self.user)


class Borrow(models.Model):
    """借用药品纪录表"""

    class Meta:
        verbose_name = '借用药品记录'
        verbose_name_plural = verbose_name

    user = models.ForeignKey(CommonUser, on_delete=models.CASCADE, verbose_name='借用人')
    lab = models.ForeignKey(Lab, on_delete=models.CASCADE, verbose_name='借用地点')
    medicine = models.ForeignKey(Medicine, on_delete=models.CASCADE, verbose_name='借用药品', )
    medicineUsedNum = models.PositiveIntegerField('药品使用量(/g)', default=0)
    boDate = models.DateTimeField('借用时间', auto_now_add=True)


class InsBorrow(models.Model):
    """2/28借用仪器纪录表"""

    class Meta:
        verbose_name = '借用仪器记录'
        verbose_name_plural = verbose_name

    ins_user = models.ForeignKey(CommonUser, on_delete=models.CASCADE, verbose_name='借用人')
    instrument = models.ForeignKey(Instrument, on_delete=models.CASCADE, verbose_name='借用仪器', )
    ins_boNum = models.PositiveIntegerField('借用数量', default=0)
    ins_boDate = models.DateTimeField('借用时间', auto_now_add=True)


class Doc(models.Model):
    class Meta:
        verbose_name = '文件'
        verbose_name_plural = verbose_name

    #  文件名称
    file_name = models.CharField('文件名字', max_length=50)
    #  文件保存路径
    file_path = models.CharField('文件路径', max_length=100)
    # 文件
    file_obj = models.FileField('文件', upload_to='files/')
    #  上传时间
    upload_time = models.DateTimeField('借用时间', auto_now_add=True)

    def __str__(self):
        return self.file_name
