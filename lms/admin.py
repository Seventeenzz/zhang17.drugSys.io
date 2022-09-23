from django.contrib import admin
from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
# Register your models here.
from import_export import resources
from import_export.admin import ImportExportActionModelAdmin
from simpleui.admin import AjaxAdmin

from .models import *


class ProxyResource(resources.ModelResource):
    class Meta:
        model = Medicine
        import_id_fields = ('number',)
        fields = ('id', 'number', 'name', 'nowtotal', 'usedtotal', 'riskfactor', 'detail')
        export_order = ('id', 'number', 'name', 'nowtotal', 'usedtotal', 'riskfactor', 'detail')


class MedicineAdmin(ImportExportActionModelAdmin, AjaxAdmin):
    resource_class = ProxyResource
    list_display = ['id', 'number', 'name', 'nowtotal', 'usedtotal', 'riskfactor']
    list_editable = ['nowtotal', 'usedtotal', 'riskfactor']
    list_per_page = 10
    list_filter = ['riskfactor']
    list_display_links = ['name', ]
    search_fields = ['number', 'name', 'riskfactor', ]


class ProxyBorrow(resources.ModelResource):
    class Meta:
        model = Borrow
        import_id_fields = ('user', 'boDate')
        fields = ('id', 'user', 'lab', 'medicine', 'medicineUsedNum', 'boDate',)
        export_order = ('id', 'user', 'lab', 'medicine', 'medicineUsedNum', 'boDate')


class BorrowAdmin(ImportExportActionModelAdmin, AjaxAdmin):
    resource_class = ProxyBorrow
    list_display = ['id', 'user', 'medicine', 'medicineUsedNum', 'boDate']
    # list_editable = ['medicineUsedNum']
    list_filter = ['boDate', 'user', ]
    list_display_links = ['user', ]
    list_per_page = 10


# ok
# class BorrowAdmin(admin.ModelAdmin):
#     list_display = ['id', 'user', 'medicine', 'medicineUsedNum', 'boDate', ]
#     list_editable = ['medicineUsedNum']
#     list_filter = ['boDate', 'user', ]
#     list_display_links = ['user', ]
#     list_per_page = 10


class CommonUserInline(admin.TabularInline):
    model = CommonUser
    can_delete = False
    verbose_name = '用户'
    verbose_name_plural = verbose_name


# ok


class UserAdmin(BaseUserAdmin):
    inlines = (CommonUserInline,)


class LabAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'description']
    list_per_page = 10
    ordering = ['id']


class InstrumentAdmin(admin.ModelAdmin):
    list_display = ['id', 'ins_no', 'ins_name', 'ins_nowtotal', 'ins_bototal', 'ins_detail']
    list_per_page = 5
    ordering = ['ins_no']


class InsBorrowAdmin(admin.ModelAdmin):
    list_display = ['id', 'ins_user', 'instrument', 'ins_boNum', 'ins_boDate']
    list_per_page = 5
    ordering = ['-ins_boDate']


admin.site.unregister(User)
admin.site.register(User, UserAdmin)
admin.site.register(Medicine, MedicineAdmin)
admin.site.register(Borrow, BorrowAdmin)
admin.site.register(Lab, LabAdmin)
admin.site.register(Instrument,InstrumentAdmin)
admin.site.register(InsBorrow,InsBorrowAdmin)

admin.site.register(Doc)

admin.site.site_header = '实验室药品分析与预警系统'
admin.site.site_title = '实验室药品分析与预警系统后台'
