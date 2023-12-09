# views.py
from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import login, logout
from django.contrib.auth.decorators import login_required
from .models import HealthRecord
import hashlib
from .forms import CustomUserCreationForm 
from django.contrib import messages

def register(request):
    if request.method == 'POST':
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)
            messages.success(request, 'Registration successful!')
            return redirect('login')
        else:
            print(form.errors)
            messages.error(request, 'Registration failed. Please check the form.')
    else:
        form = CustomUserCreationForm()

    return render(request, 'register.html', {'form': form})

@login_required
def dashboard(request):
    user = request.user
    records = HealthRecord.objects.all()

    if not all(record.can_view(user) for record in records):
        return render(request, 'access_denied.html')

    data_for_template = {'records': records}
    return render(request, 'dashboard.html', context=data_for_template)

@login_required
def add_health_record(request):
    if request.method == 'POST':
        # Extract form data
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        gender = request.POST.get('gender')
        age = request.POST.get('age')
        weight = request.POST.get('weight')
        height = request.POST.get('height')
        health_history = request.POST.get('health_history')

        # Calculate the hash value
        hash_value = hashlib.sha256(
            (first_name + last_name + gender + age + weight + height + health_history).encode('utf-8')
            ).hexdigest()
        
        # Check if the hash value already exists
        if HealthRecord.objects.filter(hash_value=hash_value).exists():
            return redirect('access_denied')
        
        # Check if the user has permission to add a new health record
        if not request.user.role == 'H':
            return redirect('access_denied')
        
        # Check if the user has permission to view the health record
        if not all(record.can_view(request.user) for record in HealthRecord.objects.all()):
            return redirect('access_denied')

        # Save the new health record
        new_record = HealthRecord(
            first_name=first_name,
            last_name=last_name,
            gender=gender,
            age=age,
            weight=weight,
            height=height,
            health_history=health_history,
        )

        # Calculate and save the hash value
        new_record.save()

        return redirect('dashboard')

    return render(request, 'add_health_record.html')

@login_required
def logout_view(request):
    logout(request)
    return redirect('/accounts/login/')

# access_denied.html
@login_required
def access_denied(request):
    return render(request, 'access_denied.html')