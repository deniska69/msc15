from django.views.generic.list import ListView
from News.models import Post

class IndexView(ListView):
    context_object_name = 'post_last'
    queryset = Post.objects.order_by('-date_cr')[:5]
    template_name = 'index.html'
