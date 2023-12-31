# Generated by Django 4.2.7 on 2023-12-07 15:47

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='HealthRecord',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(max_length=100)),
                ('last_name', models.CharField(max_length=100)),
                ('gender', models.BooleanField()),
                ('age', models.IntegerField()),
                ('weight', models.FloatField()),
                ('height', models.FloatField()),
                ('health_history', models.TextField()),
            ],
        ),
    ]
