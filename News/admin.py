from django.contrib import admin
from News.models import Post
from django_summernote.admin import SummernoteModelAdmin

#admin.site.register(Post)

# Apply summernote to all TextField in model.
    class PostNews(SummernoteModelAdmin):  # instead of ModelAdmin
        summernote_fields = ('text',)

    admin.site.register(Post, PostNews)
