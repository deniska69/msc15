#from django.shortcuts import render, get_object_or_404
from News.models import Post
from django.views.generic.list import ListView


#def post_list(request):
#    post = Post.objects.all()
#    return render(request, 'News/post_list.html', {'post_ls': post})

#def post_page(request, pk):
#    post = get_object_or_404(Post, id=pk)
#    return render(request, 'News/post_page.html', {'post_pg': post})

class NewsAll(ListView):
    context_object_name = 'news_all'
    template_name = 'News/news.html'
    queryset = Post.objects.all().order_by('-date_cr')[0:10]
