#from django.views.generic.base import TemplateView
from django.views.generic.list import ListView
from News.models import Post

#class IndexView(TemplateView):
#    template_name = 'index.html'

class IndexView(ListView):
    context_object_name = 'post_last'
    queryset = Post.objects.order_by('-date_cr')[:3]
    template_name = 'index.html'
