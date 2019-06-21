from django.db import models
from django.contrib.auth import get_user_model
User = get_user_model()
from validatedfile.fields import ValidatedFileField


class Post(models.Model):
    author = models.ForeignKey(User, null=True, verbose_name='Автор:', on_delete=models.SET_NULL)
    title = models.CharField(max_length=100, null=False, blank=False, verbose_name='Заголовок:')
    text = models.CharField(max_length=5000, null=False, blank=True, verbose_name='Текст статьи:')
    date_cr = models.DateTimeField(auto_now_add=True, verbose_name='Дата создания:')
    img_preview = models.ImageField(null=True, blank=True, upload_to='News/previews', verbose_name='Превью новости:')

    class Meta:
        verbose_name = 'Статья'
        verbose_name_plural = 'Статьи'

    def __str__(self):
        return "{} — {}".format(self.date_cr.strftime('%d.%m.%Y  %H:%M:%S'), self.title)


class Attachment(models.Model):
    apost = models.ForeignKey(Post, on_delete = models.SET_NULL, blank=True, null=True)
    att = ValidatedFileField(verbose_name='Вложения:', upload_to='uploads/', content_types=['image/jpeg', 'image/bmp', 'image/jph', 'image/png', 'text/rtf', 'application/pdf', 'application/vnd.rar', 'application/zip', 'application/msword',], max_upload_size=2097152, blank=True, null=True)

    class Meta:
        verbose_name = 'Вложение'
        verbose_name_plural = 'Вложения'
