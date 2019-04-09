from django.contrib import admin
from django.urls import path
from . import views
from .views import NewsAll, NewsDetail
from django.views.generic import ListView, DetailView
from News.models import Post

urlpatterns = [
    path('', views.NewsAll.as_view()),
    path('<int:pk>/', views.NewsDetail.as_view(), name='news_page'),
]
