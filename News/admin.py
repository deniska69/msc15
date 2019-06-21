from django.contrib import admin
from News.models import Post, Attachment
from django_summernote.admin import SummernoteModelAdmin

class AttachmentInline(admin.TabularInline):
    model = Attachment

class PostNews(SummernoteModelAdmin):
    summernote_fields = ('text',)
    inlines = [AttachmentInline,]

admin.site.register(Post, PostNews)
