# views.py
import json
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .models import Creditos
from .serializers import CreditosSerializer
from django.http import HttpResponse
from django.shortcuts import render
from drf_spectacular.utils import extend_schema


# GET: Lista todos los registros
class CreditosListView(APIView):
    def get(self, request):
        creditos = Creditos.objects.all()
        serializer = CreditosSerializer(creditos, many=True)
        return Response(serializer.data)


# POST: Crea un nuevo registro
class CreditosCreateView(APIView):
    @extend_schema(request=CreditosSerializer, responses=CreditosSerializer)
    def post(self, request):
        serializer = CreditosSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# GET: Descarga en archivo .json todos los registros actuales
class CreditosDownloadJson(APIView):
    def get(self, request):
        try:
            creditos = Creditos.objects.all()
            serializer = CreditosSerializer(creditos, many=True)
            file_content = json.dumps(serializer.data, indent=4)

            response = HttpResponse(file_content, content_type='application/json')
            response['Content-Disposition'] = 'attachment; filename="creditos.json"'
            return response
        except Exception as e:
            return Response({"error": str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


def creditos_frontend(request):
    return render(request, 'creditos_frontend.html')
