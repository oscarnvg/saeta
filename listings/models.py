from django.db import models # type: ignore
from datetime import datetime
from realtors.models import Realtor

TIPO_CHOICES = [
    ('Apartaestudio', 'Apartaestudio'),
    ('Apartamento', 'Apartamento'),
    ('Casa', 'Casa'),
    ('Comercial', 'Comercial'),
    # Agrega más opciones si es necesario
]

CITY_CHOICES = [
    ('Manizales', 'Manizales'),
    ('Villamaria', 'Villamaría'),
    ('Chinchina', 'Chinchina'),
    # Agrega más opciones si es necesario
]

class Listing(models.Model):
    codigo = models.CharField(max_length=6)
    realtor = models.ForeignKey(Realtor,on_delete=models.DO_NOTHING)
    title = models.CharField(max_length=200)
    tipo = models.CharField(max_length=15, choices=TIPO_CHOICES)
    address = models.CharField(max_length=200)
    city = models.CharField(max_length=30, choices=CITY_CHOICES)
    province = models.CharField(max_length=100)
    zipcode = models.CharField(max_length=20)
    description = models.TextField(blank=True)
    price = models.IntegerField()
    bedrooms = models.IntegerField()
    bathrooms = models.DecimalField(max_digits=2,decimal_places=1)
    garage =  models.IntegerField(default=0)
    sqft = models.IntegerField()
    lot_size = models.DecimalField(max_digits=5,decimal_places=1)
    photo_main = models.ImageField(upload_to='photos/%Y/%m/%d/')
    photo_1 = models.ImageField(upload_to='photos/%Y/%m/%d/', blank= True)
    photo_2 = models.ImageField(upload_to='photos/%Y/%m/%d/', blank= True)
    photo_3 = models.ImageField(upload_to='photos/%Y/%m/%d/', blank= True)
    photo_4 = models.ImageField(upload_to='photos/%Y/%m/%d/', blank= True)
    photo_5 = models.ImageField(upload_to='photos/%Y/%m/%d/', blank= True)
    photo_6 = models.ImageField(upload_to='photos/%Y/%m/%d/', blank= True)
    is_published = models.BooleanField(default=True)
    list_date = models.DateTimeField(default=datetime.now, blank = True)
    def __str__(self):
        return self.title


