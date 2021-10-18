# Generated by Django 2.2.7 on 2021-10-18 06:37

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Books',
            fields=[
                ('id', models.CharField(max_length=10, primary_key=True, serialize=False)),
                ('book_title', models.CharField(max_length=100)),
                ('author', models.CharField(max_length=100)),
                ('type', models.CharField(max_length=100)),
                ('genre', models.CharField(max_length=100)),
                ('pub', models.CharField(max_length=100)),
                ('pages', models.IntegerField()),
                ('price', models.FloatField()),
                ('cover_of_book', models.ImageField(blank=True, null=True, upload_to='static/book/cover_photo/')),
            ],
            options={
                'db_table': 'Books_Master_1',
            },
        ),
    ]