# from django.contrib import admin
from django.urls import path
# imported views
from myapp import views

urlpatterns = [
    # configured the url
    path('',views.index , name="homepage")
]