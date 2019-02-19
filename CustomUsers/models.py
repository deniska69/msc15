from django.db import models

# Create your models here.
from django.contrib.auth.models import AbstractUser
from django.contrib.auth.models import User

class Profile(AbstractUser):
    name_n = models.CharField(max_length=50, null=False, blank=False, verbose_name=u'Имя:')
    name_p = models.CharField(max_length=50, null=False, blank=False, verbose_name=u'Отчество:')
    name_f = models.CharField(max_length=50, null=False, blank=False, verbose_name=u'Фамилия:')
    position = models.CharField(max_length=100, null=False, blank=False, verbose_name=u'Должность:')
    birthday = models.CharField(max_length=100, null=False, blank=False, verbose_name=u'Дата рождения:')
    note = models.CharField(max_length=200, null=False, blank=False, verbose_name=u'Заметка:')

    def __str__(self):
        return 'test' + self.name_f + self.name_n + self.name_p

    verbose_name = 'Пользователи'
