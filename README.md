# Operations.pl — Aritmetik İşlemler

Bu dosya basit aritmetik işlemler ve aritmetik karşılaştırma predikatlerini içerir. SWI‑Prolog ile kullanılmak üzere tasarlanmıştır.

Özet predikatlar:
- add(A, B, Sum) — Toplama. Sum is A + B.
- sub(A, B, Diff) — Çıkarma. Diff is A - B.
- mul(A, B, Prod) — Çarpma. Prod is A * B.
- divI(A, B, Quot) — Tam sayı bölme (//). B ≠ 0.
- modR(A, B, Rem) — Mod (kalan). B ≠ 0.
- pow(A, B, Res) — Üs alma (A ** B).
- eq(A, B) — Aritmetik eşitlik (=:=).
- ne(A, B) — Aritmetik eşit değil (=\=).
- gt(A, B) — A > B.
- lt(A, B) — A < B.
- gte(A, B) — A >= B.
- lte(A, B) — A =< B.

Yükleme:
```prolog
?- consult('Operations.pl').
```

Hızlı örnek sorgular (SWI‑Prolog toplevel):
```prolog
?- add(3, 5, Sum).       % Sum = 8
?- sub(10, 4, D).        % D = 6
?- mul(2, 6, P).         % P = 12
?- divI(9, 2, Q).        % Q = 4
?- modR(10, 3, R).       % R = 1
?- pow(2, 3, Res).       % Res = 8
?- gt(5, 3).             % true
?- eq(4, 4).             % true
```

Notlar ve uyarılar:
- divI ve modR predikatlarında ikinci argüman (B) sıfır olamaz; dosyada B =\= 0 kontrolü vardır.
- is/2 kullanılırken sağdaki ifade ground (hesaplanabilir) olmalıdır; aksi halde hata alınır.
- Aritmetik eşitlik kontrolü için '=' yerine '=:=', eşit olmama için '=\=' kullanılır. '=' Prolog'da unifikasyondur (aritmetik karşılaştırma değil).
- pow/3 ile negatif veya kesirli üslerde sonuç farklı türde (float) dönebilir.
- Bu predikatlar aritmetik işlemleri basit ve öğretici amaçla gösterir; daha karmaşık hata kontrolleri veya tip doğrulamaları içermez.
