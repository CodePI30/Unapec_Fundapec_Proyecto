from django.db import models


class Creditos(models.Model):
    matricula = models.CharField(max_length=50)
    nombre = models.CharField(max_length=100)
    carrera = models.CharField(max_length=100)
    creditos = models.CharField(max_length=50)
    monto_otorgado = models.DecimalField(max_digits=18, decimal_places=2)
    fecha_desembolso = models.DateField()
    tasa_interes = models.DecimalField(max_digits=5, decimal_places=2)
    plazo_meses = models.IntegerField()
    estado_credito = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'creditos'
