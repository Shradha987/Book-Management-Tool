from django.shortcuts import render
from book.models import *
import os
# Create your views here.
def welcome_page(request):
    return render(request=request,
                  template_name='welcome.html',
                  context={
                      'book_heading':'Welcome to Book Management Tool'
                  })

def add_book(request):
    result=''
    b = Books()
    if request.method == 'POST':
        b.id=request.POST.get('id')
        b.book_title=request.POST.get('book_title')
        b.author =request.POST.get('author')
        b.type =request.POST.get('type')
        b.genre =request.POST.get('genre')
        b.pub = request.POST.get('pub')
        b.pages = request.POST.get('pages')
        b.price = request.POST.get('price')
        if len(request.FILES) !=0:
            b.cover_of_book = request.FILES['cover_of_book']
        b.save()
        result='Book Added Successfully!!!'
    return render(request=request,
                  template_name='addbook_1.html',
                   context={"message":result})

def list_book(request):
    blist = Books.objects.all()
    # cover = []
    # for b in blist:
    #     cover.append(b.cover_of_book)
    #     print(cover)


    return render(request=request,
                          template_name='list.html',
                          context={"blist" :Books.objects.all()})


def list_type(request):
    record = []
    data = ''
    blist=[]
    if request.method =='POST':
        formdata = request.POST
        choice = formdata.get('choice')
        data = formdata.get('value')
        if choice == 'Type':
            record = Books.objects.all()

    return render(request=request,
                      template_name='list_type.html',
                      context={
                         "blist": Books.objects.filter(type=data)})

def list_genre(request):
    record = []
    data = ''
    blist=[]
    if request.method =='POST':
        formdata = request.POST
        choice = formdata.get('choice')
        data = formdata.get('value')
        if choice == 'Genre':
            record = Books.objects.all()
    return render(request=request,
                      template_name='list_genre.html',
                      context={
                         "blist": Books.objects.filter(genre=data)})

def delete_book(request):
    msg=""
    if request.method=='POST':
        formdata=request.POST
        choice=formdata.get('choice')
        value=formdata.get('value')
        # print(choice)
        # print(value)
        if choice=='id':
            record=Books.objects.filter(id=value).first()
            record.delete()
            msg = 'Book deleted'
        else:
            msg='No book found'
    return render(request=request,
                      template_name='delete.html',
                      context={
                            'message':msg,
                            'blist':Books.objects.all()})