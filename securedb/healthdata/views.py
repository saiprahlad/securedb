# views.py
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import render, redirect
from .forms import CustomUserCreationForm

def register(request):
    if request.method == 'POST':
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')  # Redirect to your login page
    else:
        form = CustomUserCreationForm()

    return render(request, 'register.html', {'form': form})

def custom_login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            return redirect('home')  # Redirect to your home page
        else:
            return render(request, 'login.html', {'error': 'Invalid login credentials'})

    return render(request, 'login.html')

def custom_logout(request):
    logout(request)
    return redirect('home')  # Redirect to your home page

def some_protected_view(request):
    user_role = request.user.role

    if user_role == 'H':
        # Allow access for users in Group H
        return render(request, 'group_h_template.html')
    elif user_role == 'R':
        # Allow access for users in Group R
        return render(request, 'group_r_template.html')
    else:
        # Handle other cases (optional)
        return render(request, 'unauthorized_template.html')