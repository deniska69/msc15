from django.contrib import admin

# Register your models here.
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User
from .models import Profile

class ProfileAdmin(admin.ModelAdmin):
    can_delete = False
    fields = ('username',  'password', 'name_n', 'name_p', 'name_f', 'position', 'birthday', 'note',)

admin.site.register(Profile, ProfileAdmin)
