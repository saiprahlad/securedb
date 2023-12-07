from django.contrib.auth.models import AbstractUser
from django.db import models

class HealthRecord(models.Model):
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    gender = models.BooleanField()
    age = models.IntegerField()
    weight = models.FloatField()
    height = models.FloatField()
    health_history = models.TextField()
    
    def can_view(self, user):
        if user.role == 'H':
            return True
        elif user.role == 'R':
            return False
        return False

    def can_add(self, user):
        return user.role == 'H'
    
    def __str__(self):
        return f"{self.first_name} {self.last_name}"

class CustomUser(AbstractUser):
    ROLES = (
        ('H', 'Group H'),
        ('R', 'Group R'),
    )

    role = models.CharField(max_length=1, choices=ROLES, default='R')

    def __str__(self):
        return self.username