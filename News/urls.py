from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('', views.post_list, name='post_ls'),
    path('post_page/<int:pk>', views.post_page, name='post_pg')
]
