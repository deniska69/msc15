from News.models import Post
from django.views.generic import ListView, DetailView

class NewsAll(ListView):
    context_object_name = 'news_all'
    template_name = 'News/news.html'
    queryset = Post.objects.all().order_by('-date_cr')[0:10]

class NewsDetail(DetailView):
    model = Post
    template_name = 'News/news_page.html'
