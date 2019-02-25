from django.db import models
from django.contrib.auth import get_user_model
User = get_user_model()

# Create your models here.
class Post(models.Model):
    author = models.ForeignKey(User, null=True, verbose_name='Автор:', on_delete=models.SET_NULL)
    title = models.CharField(max_length=100, null=False, blank=False, verbose_name='Заголовок:')
    text = models.CharField(max_length=1000, null=False, blank=True, verbose_name='Текст:')
    date_cr = models.DateTimeField(auto_now_add=True, verbose_name='Дата создания:')

    class Meta:
        verbose_name = 'Статья'
        verbose_name_plural = 'Статьи'

    def __str__(self):
        return self.title
