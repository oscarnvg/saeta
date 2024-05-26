from django.shortcuts import render,get_object_or_404 
from django.core.paginator import EmptyPage, PageNotAnInteger,Paginator 
from .choices import price_choices, bedroom_choices,province_choices,tipo_choices, city_choices
from .models import Listing



def index(request):
    listings = Listing.objects.order_by('-list_date').filter(is_published=True)
    paginator = Paginator(listings,6)
    page = request.GET.get('page')
    paged_listings =paginator.get_page(page)

    context ={
        'listings': paged_listings
    }
    return render(request,'listings/listings.html',context)

def listing(request,listing_id):
    listing = get_object_or_404(Listing,pk=listing_id)

    context ={
        'listing':listing
    }
    return render(request,'listings/listing.html',context)

def search(request):
    queryset_list = Listing.objects.order_by('-list_date')
    #tipo
    if 'tipo' in request.GET:
        tipo = request.GET['tipo']
        if tipo:
            queryset_list = queryset_list.filter(tipo__lte=tipo)
    #Keywords
    if 'keywords' in request.GET:
        keywords = request.GET['keywords']
        if keywords:
            queryset_list = queryset_list.filter(description__icontains=keywords)
    #codigo
    if 'codigo' in request.GET:
        codigo = request.GET['codigo']
        if codigo:
            queryset_list = queryset_list.filter(description__icontains=codigo)
    #City
    if 'city' in request.GET:
        city = request.GET['city']
        if city:
            queryset_list = queryset_list.filter(city__iexact=city)
    #Province
    if 'province' in request.GET:
        province = request.GET['province']
        if province:
            queryset_list = queryset_list.filter(province__iexact=province)
    #Bedrooms
    if 'bedrooms' in request.GET:
        bedrooms = request.GET['bedrooms']
        if bedrooms:
            queryset_list = queryset_list.filter(bedrooms__iexact=bedrooms)
    #Price
    if 'price' in request.GET:
        price = request.GET['price']
        if price:
            queryset_list = queryset_list.filter(price__lte=price)


    context ={
        'city_choices' :city_choices,
        'tipo_choices' :tipo_choices,
        'price_choices': price_choices,
        'bedroom_choices': bedroom_choices,
        'province_choices': province_choices,
        'listings': queryset_list,
        'values': request.GET
    }
    return render(request,'listings/search.html',context)