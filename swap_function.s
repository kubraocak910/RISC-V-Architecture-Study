# RISC-V 64-bit Swap Uygulaması
# İşlev: v[k] ve v[k+1] elemanlarını takas eder.
# Kaynak: Bilgisayar Mimarisi Dersi Örnekleri

.text
.align 2
.globl swap

swap:
    # 1. Adres Hesaplama
    # k (x11) indeksini 8 ile çarparak (slli) byte adresine çeviriyoruz (64-bit mimari)
    slli x6, x11, 3      
    # Başlangıç adresi (x10) ile ofseti toplayıp v[k]'nın gerçek adresini buluyoruz
    add  x6, x10, x6     

    # 2. Veri Yükleme (Load)
    ld   x5, 0(x6)       # x5 = v[k] (geçici değişken / temp)
    ld   x7, 8(x6)       # x7 = v[k+1]

    # 3. Veri Saklama (Store)
    sd   x7, 0(x6)       # v[k] = x7 (eski v[k+1])
    sd   x5, 8(x6)       # v[k+1] = x5 (eski v[k])

    # Fonksiyondan dönüş
    jalr x0, 0(x1)
