from django.contrib import admin
from django.urls import path
from . import views
from .views import NewsAll

urlpatterns = [
    path('', views.NewsAll.as_view()),
]
