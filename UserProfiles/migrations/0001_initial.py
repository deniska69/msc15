# Generated by Django 2.1.5 on 2019-02-26 17:00

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name_n', models.CharField(max_length=50, verbose_name='Имя:')),
                ('name_p', models.CharField(max_length=50, verbose_name='Отчество:')),
                ('name_f', models.CharField(max_length=50, verbose_name='Фамилия:')),
                ('position', models.CharField(max_length=100, verbose_name='Должность:')),
                ('birthday', models.CharField(blank=True, max_length=30, verbose_name='Дата рождения:')),
                ('phone', models.CharField(blank=True, max_length=30, verbose_name='Моб.номер:')),
                ('bio', models.CharField(blank=True, max_length=1000, verbose_name='Биография:')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
