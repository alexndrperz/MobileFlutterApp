from rest_framework import viewsets
from django import http
import qrcode, io, png

from PIL import Image
import qrcode.image.svg

class QrView(viewsets.ModelViewSet):

    def get_qr_code(self, request, name):
        qr = qrcode.make(name)
        buffer = io.BytesIO()
        qr_png = qr.save(buffer)
        response =  http.HttpResponse(content_type="image/png")
        response.write(buffer.getvalue())
        return response

