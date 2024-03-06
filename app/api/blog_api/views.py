from rest_framework import generics
from blog.models import Post
from .serializers import PostSerializer

class PostList(generics.ListAPIView):
    pass

class PostDetail(generics.RetrieveDestroyAPIView):
    pass