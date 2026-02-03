# RISC-V Buyruk Kümesi Mimarisi (ISA) Özet Notları

Bu dizin, ders kapsamında incelenen RISC-V mimarisine ait temel komut yapılarını içerir.

## Temel Kavramlar
- **R-Tipi Komutlar:** Aritmetik işlemler (add, sub, and, or).
- **I-Tipi Komutlar:** Sabit değerli işlemler ve Load (yükleme) komutları (addi, ld).
- **S-Tipi Komutlar:** Store (saklama) komutları (sd).

## Performans Denklemi
İşlemci süresi şu formüle göre analiz edilmiştir:
`İşlemci Zamanı = Buyruk Sayısı × BBÇ (CPI) × Saat Çevrimi Süresi`
