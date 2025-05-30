from django.urls import path
from .views import CreditosListView, CreditosCreateView, CreditosDownloadJson, creditos_frontend

urlpatterns = [
    path('creditos/', creditos_frontend, name='creditos_frontend'),
    path('creditos/list/',CreditosListView.as_view() , name='creditos-list'),
    path('creditos/create/', CreditosCreateView.as_view(), name='creditos-create'),
    path('creditos/download/', CreditosDownloadJson.as_view(), name='creditos-download'),
]