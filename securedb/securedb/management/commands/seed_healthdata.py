import os
from django.core.management.base import BaseCommand
from faker import Faker
from healthdata.models import HealthRecord

fake = Faker()

class Command(BaseCommand):
    help = 'Seed the database with random HealthRecord data'

    def handle(self, *args, **kwargs):
        self.stdout.write(self.style.SUCCESS('Seeding database with random HealthRecord data...'))

        for _ in range(100):
            HealthRecord.objects.create(
                first_name=self.generate_random_string(),
                last_name=self.generate_random_string(),
                gender=self.generate_random_boolean(),
                age=self.generate_random_int(18, 99),
                weight=self.generate_random_float(40, 120),
                height=self.generate_random_float(1.50, 2.20),
                health_history=self.generate_random_string(),
            )

        self.stdout.write(self.style.SUCCESS('Random data generation completed.'))

    def generate_random_string(self, length=10):
        characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
        return ''.join(fake.random.choices(characters, k=length))

    def generate_random_boolean(self):
        return fake.random.choice([True, False])

    def generate_random_int(self, min_value, max_value):
        return fake.random.randint(min_value, max_value)

    def generate_random_float(self, min_value, max_value):
        return fake.random.uniform(min_value, max_value)
