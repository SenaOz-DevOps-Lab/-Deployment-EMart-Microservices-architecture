#!/bin/bash

echo "=========================================="
echo " EMart - FLO Kurumsal Tema Enjeksiyonu"
echo "=========================================="

# Angular uygulamasının index.html dosyasına FLO Turuncusu (#ff6a00) renk ayarlarını zorla (inject) ediyoruz.
docker exec client bash -c 'sed -i "/<\/head>/i <style>\n:root {\n  --primary: #ff6a00 !important;\n  --blue: #ff6a00 !important;\n  --info: #ff6a00 !important;\n  --dark: #333333 !important;\n}\n.bg-primary, .btn-primary, .badge-primary {\n  background-color: #ff6a00 !important;\n  border-color: #ff6a00 !important;\n  color: white !important;\n}\n.text-primary {\n  color: #ff6a00 !important;\n}\n.navbar-dark .navbar-nav .nav-link {\n  color: white !important;\n}\n.navbar-dark {\n  background-color: #ff6a00 !important;\n}\n.btn-outline-primary {\n  color: #ff6a00 !important;\n  border-color: #ff6a00 !important;\n}\n.btn-outline-primary:hover {\n  background-color: #ff6a00 !important;\n  color: white !important;\n}\n.card-header {\n  background-color: #f8f9fa !important;\n  border-bottom: 2px solid #ff6a00 !important;\n}\n</style>" /usr/share/nginx/html/index.html'

echo ""
echo " Tema basariyla uygulandi! Github kaynak kodlarina hicbir sekilde dokunulmadi."
echo "Lutfen tarayicinizi yenileyin (F5) ve sonucu gorun."
