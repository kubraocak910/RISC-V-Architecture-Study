# RISC-V Prosedür Çağrısı Örneği
# İşlev: (g + h) - (i + j) işlemini bir fonksiyon içinde yapar.
# g, h, i, j -> x10, x11, x12, x13 (Parametreler)

leaf_example:
    # Stack'te yer aç (Register'ları korumak için)
    addi sp, sp, -16
    sd   x5, 8(sp)
    sd   x6, 0(sp)

    # Hesaplama
    add  x5, x10, x11    # x5 = g + h
    add  x6, x12, x13    # x6 = i + j
    sub  x10, x5, x6     # Sonuç x10 (Return value) register'ına yazılır

    # Stack'ten geri yükle ve alanı boşalt
    ld   x5, 8(sp)
    ld   x6, 0(sp)
    addi sp, sp, 16

    jr   x1              # Geri dön
