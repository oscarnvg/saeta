from django.contrib import admin # type: ignore

from .models import Listing

class ListingAdmin(admin.ModelAdmin):
    list_display = ('id','tipo','title','is_published','price','list_date','realtor')
    list_display_links = ('id','title')
    list_filter = ('realtor',)
    list_editable = ('is_published',)
    search_fields = ('title','codigo','tipo','description','address','city','state','zipcode','price')
    list_per_page = 6
admin.site.register(Listing,ListingAdmin)
