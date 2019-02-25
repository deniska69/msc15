from django.shortcuts import render, get_object_or_404
from News.models import Post

def post_list(request):
    post = Post.objects.all()
    return render(request, 'News/post_list.html', {'post_ls': post})

def post_page(request, pk):
    post = get_object_or_404(Post, id=pk)
    return render(request, 'News/post_page.html', {'post_pg': post})
